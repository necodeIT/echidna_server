import 'package:logging/logging.dart';
import 'package:mcquenji_core/src/infra/services/debug_log_handler_service.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:test/test.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(DebugLogHandlerService());

  setUp(() {});

  tearDown(() {
    Modular.destroy();
  });

  // Your unit tests here.
}
