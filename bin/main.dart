import 'package:license_server/config/server.dart';
import 'package:license_server/license_server.dart';
import 'package:license_server/modules/server/server.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_modular/shelf_modular.dart';

void main(List<String> args) async {
  final prisma = PrismaClient();

  Logger.root.onRecord.listen(debugLogHandler);

  try {
    await prisma.$connect();

    final modularHandler = Modular(
      module: ServerModule(prisma),
      middlewares: [],
    );

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

    await io.serve(modularHandler, kHost, kPort);

    Logger.root.log(Level.INFO, 'Server started at $kHost:$kPort');
  } catch (e, s) {
    Logger.root.log(Level.SEVERE, 'Failed to start server', e, s);
  } finally {
    await prisma.$disconnect();
  }
}
