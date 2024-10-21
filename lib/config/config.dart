library config;

import 'package:dotenv/dotenv.dart';

export 'server.dart';

/// The loaded environment variables from the .env file.
final env = DotEnv(includePlatformEnvironment: true)..load();
