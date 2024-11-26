import 'package:echidna_server/echidna_server.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:uuid/uuid.dart';

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
    // [Uuid.new] takes an optional argument but we don't need to pass it.
    // ignore: unnecessary_lambdas
    i.addLazySingleton<Uuid>(() => const Uuid());
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
      ..resource(PaymentsResource(), name: '/payments')
      ..resource(ClientKeyResource(), name: '/client-keys');
  }
}
