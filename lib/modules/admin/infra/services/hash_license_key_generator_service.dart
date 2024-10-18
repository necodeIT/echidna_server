import 'dart:async';

import 'package:crypto/crypto.dart';
import 'package:license_server/modules/admin/admin.dart';

/// Generates license keys by concatenating the product id, customer id, and user id and hashing the result.
class HashLicenseKeyGeneratorService extends LicenseKeyGeneratorService {
  @override
  void dispose() {}

  @override
  FutureOr<String> generateLicenseKey(int productId, int customerId, String userId) {
    final content = productId.toString() + customerId.toString() + userId;

    return sha256.convert(content.codeUnits).toString();
  }
}
