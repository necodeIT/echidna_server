/// Contains configuration for the server.
library config.server;

import 'package:license_server/config/config.dart';

final _port = env['PORT'] ?? '3000';

/// The host the server will be bound to.
final kHost = env['HOST'] ?? '0.0.0.0';

/// The port the server will listen on.
final int kPort = int.tryParse(_port) ?? 3000;

final _debug = env['DEBUG'] ?? 'true';

/// Whether the server is running in debug mode.
final bool kDebugMode = _debug.toLowerCase() == 'true';
