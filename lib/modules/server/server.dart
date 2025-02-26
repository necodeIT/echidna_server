import 'package:echidna_server/echidna_server.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// The main module for the server.
class ServerModule extends Module {
  /// The Prisma client for interacting with the database.
  final PrismaClient prisma;

  /// The main module for the server.
  ServerModule(this.prisma);

  @override
  List<Module> get imports => [
        CoreModule(),
        AuthModule(),
        ClientModule(prisma),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<PrismaClient>(() => prisma);
  }

  @override
  void routes(RouteManager r) {
    r
      ..get('/', () => Response(418, body: "I'm a teapot ☕🫖🍵🧋"))
      ..module(
        '/admin',
        module: AdminModule(),
        middlewares: [
          AuthGuard(),
        ],
      )
      ..module(
        '/verify',
        module: ClientModule(prisma),
        middlewares: [
          // idk why but the order of these middlewares is reversed
          // and we want the SignatureGuard to be the first one to run
          SignatureMiddleware(),
          SignatureGuard(),
        ],
      );
  }
}
