import 'dart:async';

import 'package:mcquenji_core/mcquenji_core.dart';

/// Responsible for generating license keys.
abstract class LicenseKeyGeneratorService extends Service {
  @override
  String get name => 'LicenseKeyGenerator';

  /// Generates a new license key.
  FutureOr<String> generateLicenseKey(
    int productId,
    int customerId,
    String userId,
  );
}
