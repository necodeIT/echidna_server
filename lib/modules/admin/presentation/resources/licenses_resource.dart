import 'package:license_server/license_server.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing licenses.
class LicensesResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getCustomersHandler)
      ..post('/:id', addCustomerHandler)
      ..delete('/:id', deleteCustomerHandler)
      ..put('/:id', updateCustomerHandler);
  }
}
