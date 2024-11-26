import 'package:echidna_dto/echidna_dto.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// A datasource for retrieving license status information.
abstract class LicenseStatusDatasource extends Datasource {
  @override
  String get name => 'LicenseStatus';

  /// Returns the [LicenseStatus] for the given [licenseKey].
  Future<LicenseStatus> getLicenseStatus(String licenseKey);
}
