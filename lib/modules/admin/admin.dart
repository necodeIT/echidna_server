import 'package:license_server/license_server.dart';
import 'package:license_server/modules/admin/infra/services/hash_license_key_generator_service.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Handles all admin related api calls.
class AdminModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void binds(Injector i) {
    i.add<LicenseKeyGeneratorService>(HashLicenseKeyGeneratorService.new);
  }

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r
      ..resource(CustomerResource(), name: '/customers')
      ..resource(LicensesResource(), name: '/licenses')
      ..resource(ProductsResource(), name: '/products')
      ..resource(FeaturesResource(), name: '/features')
      ..resource(PaymentsResource(), name: '/payments');
  }
}
