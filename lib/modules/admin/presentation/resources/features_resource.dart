import 'package:echidna_server/modules/admin/admin.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing features.
class FeaturesResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getFeaturesHandler)
      ..put('/', createFeatureHandler)
      ..patch('/:id', updateFeatureHandler)
      ..delete('/:id', deleteFeatureHandler);
  }
}
