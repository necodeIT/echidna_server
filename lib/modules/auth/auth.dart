library license_server.modules.auth;

import 'package:license_server/config/server.dart';
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
      ..add<IdentityProvider>(IdentityProvider.fromEnvironment)
      ..add<AuthService>(
        kDebugMode
            ? DebugAuthService.new
            : (IdentityProvider idp, NetworkService networkService) => idp.when(
                  oidc: (
                    String name,
                    String clientId,
                    String clientSecret,
                    String redirectUri,
                    String authorizationUrl,
                    String tokenUrl,
                    String userInfoUrl,
                    String scopes,
                  ) =>
                      OidcAuthService(
                    networkService,
                    OidcIdentityProvider(
                      name: name,
                      clientId: clientId,
                      clientSecret: clientSecret,
                      redirectUri: redirectUri,
                      authorizationUrl: authorizationUrl,
                      tokenUrl: tokenUrl,
                      userInfoUrl: userInfoUrl,
                      scopes: scopes,
                    ),
                  ),
                  saml: (
                    String name,
                    String metadataUrl,
                    String x509Certificate,
                  ) =>
                      throw UnimplementedError('SAML is not yet supported.'),
                ),
      );
  }

  @override
  void routes(RouteManager r) {}
}
