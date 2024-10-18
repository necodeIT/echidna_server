/// Contains configuration for the server.
library config.server;

const _port = String.fromEnvironment('PORT');

/// The host the server will be bound to.
const kHost = String.fromEnvironment('HOST', defaultValue: '0.0.0.0');

/// The port the server will listen on.
final int kPort = int.tryParse(_port) ?? 3000;

/// Whether the server is running in debug mode.
const kDebugMode = bool.fromEnvironment('DEBUG_MODE', defaultValue: true);
