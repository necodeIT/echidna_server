library license_server.modules.admin_license_management;

import 'package:license_server/modules/admin_licenses/presentation/presentation.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Handles license managing for the admin panel.
class AdminLicensesModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getLicensesHandler)
      ..post('/:id', addLicenseHandler)
      ..post('/revoke/:id', revokeLicenseHandler)
      ..put('/:id', updateLicenseHandler);
  }
}
