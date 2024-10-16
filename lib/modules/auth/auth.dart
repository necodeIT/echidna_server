library license_server.modules.auth;

import 'package:license_server/modules/auth/domain/domain.dart';
import 'package:license_server/modules/auth/infra/infra.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Ensures that the user is authenticated before accessing any guarded resources.
class AuthModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i
      ..add<Oauth2IdentityProvider>(Oauth2IdentityProvider.fromEnvironment)
      ..add<AuthService>(Oauth2AuthService.new);
  }

  @override
  void routes(RouteManager r) {}
}
