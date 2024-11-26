import 'package:echidna_server/echidna_server.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf/shelf.dart';

/// Responsible for signing and verifying signatures.
abstract class SignatureService extends Service {
  @override
  String get name => 'Signature';

  /// Verifies the signature of a request.
  bool verifySignature(String signature, String body, String secret);

  /// Signs a request.
  String sign(String body, String secret);

  /// Extracts the client key from a request.
  ///
  /// If the client key is not found, returns `null`.
  Future<ClientKey?> extractClientKey(Request request);
}
