import 'package:echidna_server/echidna_server.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing products.
class ProductsResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getProductsHandler)
      ..put('/', createProductHandler)
      ..patch('/:id', updateProductHandler)
      ..delete('/:id', deleteProductHandler);
  }
}
