import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf/shelf.dart';

/// Extension to log requests
extension RequestX on Request {
  /// Logs a message with an optional error and stack trace.
  ///
  /// See [ILoggable.log] for more information.
  RequestLogger get log => RequestLogger(this);
}

/// Implementation of [ILoggable] for requests
class RequestLogger extends ILoggable {
  final Request _req;

  /// Implementation of [ILoggable] for requests
  const RequestLogger(this._req);

  @override
  Level get level => Level.FINE;

  @override
  String get namespace => '${_req.method} ${_req.url}';

  /// Logs a message with an optional error and stack trace.
  void call(Object message, [Object? error, StackTrace? stackTrace]) {
    log(message, error, stackTrace);
  }

  @override
  void log(Object message, [Object? error, StackTrace? stackTrace]) {
    Logger(namespace).log(
      error != null ? errorLevel : level,
      message,
      error,
      stackTrace,
    );
  }
}
