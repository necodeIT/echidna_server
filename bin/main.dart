import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:echidna_server/config/server.dart';
import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_docker_shutdown/shelf_docker_shutdown.dart';
import 'package:shelf_modular/shelf_modular.dart';

final prisma = PrismaClient();
void main(List<String> args) async {
  Logger.root.level = Level.ALL;
  // always print logs
  // ignore: avoid_print
  Logger.root.onRecord.listen((r) => print(r.formatColored()));

  try {
    await prisma.$connect();

    final modularHandler = Modular(
      module: ServerModule(prisma),
      middlewares: [
        corsHeaders(
          headers: {
            ACCESS_CONTROL_ALLOW_HEADERS: 'Content-Type, Authorization, X-Signature, client-id',
            ACCESS_CONTROL_EXPOSE_HEADERS: 'Content-Type, Authorization, X-Signature, client-id',
          },
        ),
        contentTypeJson,
      ],
    );

    if (kDebugMode) {
      Logger.root.warning('Running in debug mode');
    }

    setPrintResolver((msg) {
      final logger = Logger('Modular');
      final parts = msg.split(' ');

      final log = logger.info;

      if (parts.length == 3 && parts[0] == '--') {
        final module = parts[1].replaceAll('Module', ' Module').toLowerCase();
        final action = parts[2];

        if (action == 'DISPOSED') {
          log('Disposed $module');
          return;
        }

        if (action == 'INITIALIZED') {
          log('Initilaized $module');
          return;
        }
      }

      log(msg);
    });

    final server = await io.serve(modularHandler, kHost, kPort);

    server.serverHeader = 'Echidna License Server';
    server.defaultResponseHeaders.contentType = ContentType.json;

    server.handleError((Object e, StackTrace s) {
      Logger.root.severe('Failed to handle request', e, s);
    });

    Logger.root.log(Level.INFO, 'Server started at $kHost:$kPort');

    await server.closeOnTermSignal();

    await _shutdown();
  } catch (e, s) {
    Logger.root.log(Level.SEVERE, 'Failed to start server', e, s);

    await _shutdown();
  }
}

Future<void> _shutdown() async {
  Logger.root.info('Shutting down server');
  await prisma.$disconnect();
}

Handler contentTypeJson(Handler innerHandler) {
  return (Request request) async {
    final response = await innerHandler(request);

    final body = await response.readAsString();

    dynamic parsedBody;
    try {
      parsedBody = jsonDecode(body);
    } catch (e) {
      parsedBody = null;
    }

    String responseBody;
    if (parsedBody == null) {
      final key = response.statusCode >= 200 && response.statusCode < 300 ? 'ok' : 'error';

      // Not valid JSON, wrap the response body
      responseBody = jsonEncode(
        {key: body},
      );
    } else {
      // Valid JSON, use it as is
      responseBody = body;
    }

    return response.change(
      headers: {'Content-Type': ContentType.json.toString()},
      body: responseBody,
    );
  };
}
