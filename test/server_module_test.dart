import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:test/test.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  // ignore: avoid_print
  Logger.root.onRecord.listen((r) => print(r.formatColored()));

  setUp(() {});

  tearDown(() {
    Modular.destroy();
  });

  // Your unit tests here.
}
