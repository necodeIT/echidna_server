import 'dart:async';
import 'dart:convert';

import 'package:echidna_dto/echidna_dto.dart';
import 'package:logging/logging.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Logs endpoint that broadcasts logs to connected clients.
class LogsResource extends WebSocketResource {
  final List<ServerLog> _logs = [];

  /// Logs endpoint that broadcasts logs to connected clients.
  LogsResource() {
    Logger.root.onRecord.listen(listener);

    Timer.periodic(
      const Duration(hours: 1),
      (_) {
        _logs.removeWhere((log) => log.time.isBefore(DateTime.now().subtract(const Duration(days: 1))));
      },
    );
  }

  @override
  void connect(WebSocket socket) {
    socket.sink.add(jsonEncode(_logs));
  }

  @override
  void disconnect(WebSocket socket) {}

  @override
  void onMessage(dynamic data, WebSocket socket) {}

  void listener(LogRecord record) {
    _logs.add(ServerLog.fromLogRecord(record));

    broadcast(jsonEncode(_logs));
  }
}
