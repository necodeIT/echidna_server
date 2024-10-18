import 'package:license_server/modules/admin/admin.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing customers.
class CustomerResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getCustomersHandler)
      ..put('/', createCustomerHandler)
      ..patch('/:id', updateCustomerHandler)
      ..delete('/:id', deleteCustomerHandler);
  }
}
