library echidna_server.modules.client;

import 'package:echidna_server/echidna_server.dart';
import 'package:echidna_server/modules/client/infra/infra.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Handles requests from the client sdk.
class ClientModule extends Module {
  /// The Prisma client for interacting with the database.
  final PrismaClient prisma;

  /// Handles requests from the client sdk.
  ClientModule(this.prisma);

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void binds(Injector i) {
    i
      ..addLazySingleton(() => prisma)
      ..add<SignatureService>(HmacSignatureService.new)
      ..add<LicenseStatusDatasource>(StdLicenseStatusDatasource.new);
  }

  @override
  void routes(RouteManager r) {
    r.post(
      '/',
      verifyLicenseHandler,
    );
  }
}
