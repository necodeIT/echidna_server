library license_server.modules.admin_customers;

import 'package:license_server/modules/admin_customers/presentation/presentation.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Handles customer managing for the admin panel.
class AdminCustomersModule extends Module {
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
      ..get('/:id', getCustomersHandler)
      ..post('/:id', addCustomerHandler)
      ..delete('/:id', deleteCustomerHandler)
      ..put('/:id', updateCustomerHandler);
  }
}
