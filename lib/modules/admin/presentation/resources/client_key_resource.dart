import 'package:echidna_server/modules/admin/admin.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing client keys.
class ClientKeyResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get(
        '/',
        getClientKeysHandler,
      )
      ..delete('/:key', revokeClientKeyHandler)
      ..post('/', createClientKeyHandler);
  }
}
