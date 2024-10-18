import 'package:license_server/modules/admin/admin.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing payments.
class PaymentsResource extends Resource {
  @override
  void routes(RouteManager r) {
    r.get('/:id', getPaymentsHandler);
  }
}
