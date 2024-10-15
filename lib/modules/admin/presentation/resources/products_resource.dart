import 'package:license_server/license_server.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing products.
class ProductsResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getProductsHandler)
      ..post('/:id', createProductHandler)
      ..delete('/:id', deleteProductHandler)
      ..put('/:id', updateProductHandler);
  }
}
