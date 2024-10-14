import 'package:test/test.dart';
import 'package:license_server/modules/admin/admin.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

import 'defaults.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(debugLogHandler);

  setUp(() {});

  tearDown(() {
    Modular.destroy();
  });

  // Your unit tests here.
}
