library license_server.modules.admin_products;

import 'package:license_server/modules/admin_products/presentation/presentation.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

class AdminProductsModule extends Module {
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
      ..get('/:id', getProductsHandler)
      ..post('/:id', createProductHandler)
      ..delete('/:id', deleteProductHandler)
      ..put('/:id', updateProductHandler);
  }
}
