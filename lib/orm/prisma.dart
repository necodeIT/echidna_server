// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

class CustomerCountOutputType {
  const CustomerCountOutputType({this.licenses});

  factory CustomerCountOutputType.fromJson(Map json) =>
      CustomerCountOutputType(licenses: json['licenses']);

  final int? licenses;

  Map<String, dynamic> toJson() => {'licenses': licenses};
}

class PaymentCountOutputType {
  const PaymentCountOutputType({this.features});

  factory PaymentCountOutputType.fromJson(Map json) =>
      PaymentCountOutputType(features: json['features']);

  final int? features;

  Map<String, dynamic> toJson() => {'features': features};
}

class FeatureCountOutputType {
  const FeatureCountOutputType({this.payments});

  factory FeatureCountOutputType.fromJson(Map json) =>
      FeatureCountOutputType(payments: json['payments']);

  final int? payments;

  Map<String, dynamic> toJson() => {'payments': payments};
}

class ProductCountOutputType {
  const ProductCountOutputType({
    this.license,
    this.features,
  });

  factory ProductCountOutputType.fromJson(Map json) => ProductCountOutputType(
        license: json['License'],
        features: json['features'],
      );

  final int? license;

  final int? features;

  Map<String, dynamic> toJson() => {
        'License': license,
        'features': features,
      };
}

class LicenseCountOutputType {
  const LicenseCountOutputType({this.payments});

  factory LicenseCountOutputType.fromJson(Map json) =>
      LicenseCountOutputType(payments: json['payments']);

  final int? payments;

  Map<String, dynamic> toJson() => {'payments': payments};
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class LicenseListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.LicenseWhereInput? every;

  final _i2.LicenseWhereInput? some;

  final _i2.LicenseWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class CustomerWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.email,
    this.licenses,
  });

  final _i1
      .PrismaUnion<_i2.CustomerWhereInput, Iterable<_i2.CustomerWhereInput>>?
      AND;

  final Iterable<_i2.CustomerWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CustomerWhereInput, Iterable<_i2.CustomerWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i2.LicenseListRelationFilter? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class CustomerRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.CustomerWhereInput? $is;

  final _i2.CustomerWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedEnumFeatureTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumFeatureTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.FeatureType, _i1.Reference<_i3.FeatureType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? notIn;

  final _i1.PrismaUnion<_i3.FeatureType, _i2.NestedEnumFeatureTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumFeatureTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumFeatureTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.FeatureType, _i1.Reference<_i3.FeatureType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? notIn;

  final _i1.PrismaUnion<_i3.FeatureType, _i2.NestedEnumFeatureTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class LicenseRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.LicenseWhereInput? $is;

  final _i2.LicenseWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PaymentWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
    this.features,
  });

  final _i1.PrismaUnion<_i2.PaymentWhereInput, Iterable<_i2.PaymentWhereInput>>?
      AND;

  final Iterable<_i2.PaymentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PaymentWhereInput, Iterable<_i2.PaymentWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? activationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expirationDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? revoked;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? revocationReasoning;

  final _i1.PrismaUnion<_i2.LicenseRelationFilter, _i2.LicenseWhereInput>?
      license;

  final _i2.FeatureListRelationFilter? features;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
      };
}

class PaymentListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PaymentWhereInput? every;

  final _i2.PaymentWhereInput? some;

  final _i2.PaymentWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class FeatureWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
    this.payments,
  });

  final _i1.PrismaUnion<_i2.FeatureWhereInput, Iterable<_i2.FeatureWhereInput>>?
      AND;

  final Iterable<_i2.FeatureWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FeatureWhereInput, Iterable<_i2.FeatureWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.EnumFeatureTypeFilter, _i3.FeatureType>? type;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      trialPeriod;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.PaymentListRelationFilter? payments;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
      };
}

class FeatureListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.FeatureWhereInput? every;

  final _i2.FeatureWhereInput? some;

  final _i2.FeatureWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ProductWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.license,
    this.features,
  });

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      AND;

  final Iterable<_i2.ProductWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.LicenseListRelationFilter? license;

  final _i2.FeatureListRelationFilter? features;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ProductWhereInput? $is;

  final _i2.ProductWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class LicenseWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
    this.payments,
  });

  final _i1.PrismaUnion<_i2.LicenseWhereInput, Iterable<_i2.LicenseWhereInput>>?
      AND;

  final Iterable<_i2.LicenseWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LicenseWhereInput, Iterable<_i2.LicenseWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.IntFilter, int>? customerId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1.PrismaUnion<_i2.CustomerRelationFilter, _i2.CustomerWhereInput>?
      customer;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.PaymentListRelationFilter? payments;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer,
        'product': product,
        'payments': payments,
      };
}

class LicenseWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseWhereUniqueInput({
    this.licenseKey,
    this.AND,
    this.OR,
    this.NOT,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
    this.payments,
  });

  final String? licenseKey;

  final _i1.PrismaUnion<_i2.LicenseWhereInput, Iterable<_i2.LicenseWhereInput>>?
      AND;

  final Iterable<_i2.LicenseWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LicenseWhereInput, Iterable<_i2.LicenseWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? customerId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1.PrismaUnion<_i2.CustomerRelationFilter, _i2.CustomerWhereInput>?
      customer;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.PaymentListRelationFilter? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer,
        'product': product,
        'payments': payments,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class LicenseOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class CustomerOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerOrderByWithRelationInput({
    this.id,
    this.name,
    this.email,
    this.licenses,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? email;

  final _i2.LicenseOrderByRelationAggregateInput? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class FeatureOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProductOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductOrderByWithRelationInput({
    this.id,
    this.name,
    this.description,
    this.license,
    this.features,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.LicenseOrderByRelationAggregateInput? license;

  final _i2.FeatureOrderByRelationAggregateInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class PaymentOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class LicenseOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseOrderByWithRelationInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
    this.payments,
  });

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? productId;

  final _i2.CustomerOrderByWithRelationInput? customer;

  final _i2.ProductOrderByWithRelationInput? product;

  final _i2.PaymentOrderByRelationAggregateInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer,
        'product': product,
        'payments': payments,
      };
}

enum LicenseScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  licenseKey<String>('license_key', 'License'),
  customerId<int>('customer_id', 'License'),
  userId<String>('user_id', 'License'),
  productId<int>('product_id', 'License');

  const LicenseScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CustomerLicensesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerLicensesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LicenseWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.LicenseOrderByWithRelationInput>,
      _i2.LicenseOrderByWithRelationInput>? orderBy;

  final _i2.LicenseWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LicenseScalar, Iterable<_i2.LicenseScalar>>?
      distinct;

  final _i2.LicenseSelect? select;

  final _i2.LicenseInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CustomerCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCountOutputTypeSelect({this.licenses});

  final bool? licenses;

  @override
  Map<String, dynamic> toJson() => {'licenses': licenses};
}

class CustomerCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCountArgs({this.select});

  final _i2.CustomerCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerInclude({
    this.licenses,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.CustomerLicensesArgs>? licenses;

  final _i1.PrismaUnion<bool, _i2.CustomerCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'licenses': licenses,
        '_count': $count,
      };
}

class LicenseCustomerArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCustomerArgs({
    this.select,
    this.include,
  });

  final _i2.CustomerSelect? select;

  final _i2.CustomerInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProductLicenseArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductLicenseArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LicenseWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.LicenseOrderByWithRelationInput>,
      _i2.LicenseOrderByWithRelationInput>? orderBy;

  final _i2.LicenseWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LicenseScalar, Iterable<_i2.LicenseScalar>>?
      distinct;

  final _i2.LicenseSelect? select;

  final _i2.LicenseInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class FeatureProductArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PaymentLicenseArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentLicenseArgs({
    this.select,
    this.include,
  });

  final _i2.LicenseSelect? select;

  final _i2.LicenseInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class FeatureOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureOrderByWithRelationInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
    this.payments,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? type;

  final _i2.SortOrder? productId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? trialPeriod;

  final _i2.ProductOrderByWithRelationInput? product;

  final _i2.PaymentOrderByRelationAggregateInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
      };
}

class FeatureWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
    this.payments,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.FeatureWhereInput, Iterable<_i2.FeatureWhereInput>>?
      AND;

  final Iterable<_i2.FeatureWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FeatureWhereInput, Iterable<_i2.FeatureWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.EnumFeatureTypeFilter, _i3.FeatureType>? type;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      trialPeriod;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.PaymentListRelationFilter? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
      };
}

enum FeatureScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Feature'),
  name$<String>('name', 'Feature'),
  description<String>('description', 'Feature'),
  type<_i3.FeatureType>('type', 'Feature'),
  productId<int>('product_id', 'Feature'),
  trialPeriod<int>('trial_period', 'Feature');

  const FeatureScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PaymentFeaturesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentFeaturesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FeatureWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.FeatureOrderByWithRelationInput>,
      _i2.FeatureOrderByWithRelationInput>? orderBy;

  final _i2.FeatureWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FeatureScalar, Iterable<_i2.FeatureScalar>>?
      distinct;

  final _i2.FeatureSelect? select;

  final _i2.FeatureInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PaymentCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCountOutputTypeSelect({this.features});

  final bool? features;

  @override
  Map<String, dynamic> toJson() => {'features': features};
}

class PaymentCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCountArgs({this.select});

  final _i2.PaymentCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
    this.features,
    this.$count,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  final _i1.PrismaUnion<bool, _i2.PaymentLicenseArgs>? license;

  final _i1.PrismaUnion<bool, _i2.PaymentFeaturesArgs>? features;

  final _i1.PrismaUnion<bool, _i2.PaymentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
        '_count': $count,
      };
}

class PaymentInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentInclude({
    this.license,
    this.features,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.PaymentLicenseArgs>? license;

  final _i1.PrismaUnion<bool, _i2.PaymentFeaturesArgs>? features;

  final _i1.PrismaUnion<bool, _i2.PaymentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'license': license,
        'features': features,
        '_count': $count,
      };
}

class PaymentOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentOrderByWithRelationInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
    this.features,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? activationDate;

  final _i2.SortOrder? expirationDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? paymentReference;

  final _i2.SortOrder? revoked;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? revocationReasoning;

  final _i2.LicenseOrderByWithRelationInput? license;

  final _i2.FeatureOrderByRelationAggregateInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
      };
}

class PaymentWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
    this.features,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.PaymentWhereInput, Iterable<_i2.PaymentWhereInput>>?
      AND;

  final Iterable<_i2.PaymentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PaymentWhereInput, Iterable<_i2.PaymentWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? activationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expirationDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? revoked;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? revocationReasoning;

  final _i1.PrismaUnion<_i2.LicenseRelationFilter, _i2.LicenseWhereInput>?
      license;

  final _i2.FeatureListRelationFilter? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
      };
}

enum PaymentScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Payment'),
  licenseKey<String>('license_key', 'Payment'),
  activationDate<DateTime>('activation_date', 'Payment'),
  expirationDate<DateTime>('expiration_date', 'Payment'),
  paymentReference<String>('payment_reference', 'Payment'),
  revoked<bool>('revoked', 'Payment'),
  revocationReasoning<String>('revocation_reasoning', 'Payment');

  const PaymentScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class FeaturePaymentsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeaturePaymentsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PaymentWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PaymentOrderByWithRelationInput>,
      _i2.PaymentOrderByWithRelationInput>? orderBy;

  final _i2.PaymentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PaymentScalar, Iterable<_i2.PaymentScalar>>?
      distinct;

  final _i2.PaymentSelect? select;

  final _i2.PaymentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class FeatureCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCountOutputTypeSelect({this.payments});

  final bool? payments;

  @override
  Map<String, dynamic> toJson() => {'payments': payments};
}

class FeatureCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCountArgs({this.select});

  final _i2.FeatureCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureInclude({
    this.product,
    this.payments,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.FeatureProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.FeaturePaymentsArgs>? payments;

  final _i1.PrismaUnion<bool, _i2.FeatureCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'payments': payments,
        '_count': $count,
      };
}

class ProductFeaturesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductFeaturesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FeatureWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.FeatureOrderByWithRelationInput>,
      _i2.FeatureOrderByWithRelationInput>? orderBy;

  final _i2.FeatureWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FeatureScalar, Iterable<_i2.FeatureScalar>>?
      distinct;

  final _i2.FeatureSelect? select;

  final _i2.FeatureInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProductCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountOutputTypeSelect({
    this.license,
    this.features,
  });

  final bool? license;

  final bool? features;

  @override
  Map<String, dynamic> toJson() => {
        'License': license,
        'features': features,
      };
}

class ProductCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountArgs({this.select});

  final _i2.ProductCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductInclude({
    this.license,
    this.features,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ProductLicenseArgs>? license;

  final _i1.PrismaUnion<bool, _i2.ProductFeaturesArgs>? features;

  final _i1.PrismaUnion<bool, _i2.ProductCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'License': license,
        'features': features,
        '_count': $count,
      };
}

class FeatureSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
    this.payments,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  final _i1.PrismaUnion<bool, _i2.FeatureProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.FeaturePaymentsArgs>? payments;

  final _i1.PrismaUnion<bool, _i2.FeatureCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
        '_count': $count,
      };
}

class ProductSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSelect({
    this.id,
    this.name,
    this.description,
    this.license,
    this.features,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.ProductLicenseArgs>? license;

  final _i1.PrismaUnion<bool, _i2.ProductFeaturesArgs>? features;

  final _i1.PrismaUnion<bool, _i2.ProductCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
        '_count': $count,
      };
}

class LicenseProductArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class LicensePaymentsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicensePaymentsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PaymentWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PaymentOrderByWithRelationInput>,
      _i2.PaymentOrderByWithRelationInput>? orderBy;

  final _i2.PaymentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PaymentScalar, Iterable<_i2.PaymentScalar>>?
      distinct;

  final _i2.PaymentSelect? select;

  final _i2.PaymentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class LicenseCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCountOutputTypeSelect({this.payments});

  final bool? payments;

  @override
  Map<String, dynamic> toJson() => {'payments': payments};
}

class LicenseCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCountArgs({this.select});

  final _i2.LicenseCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseInclude({
    this.customer,
    this.product,
    this.payments,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.LicenseCustomerArgs>? customer;

  final _i1.PrismaUnion<bool, _i2.LicenseProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.LicensePaymentsArgs>? payments;

  final _i1.PrismaUnion<bool, _i2.LicenseCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'customer': customer,
        'product': product,
        'payments': payments,
        '_count': $count,
      };
}

class CustomerSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerSelect({
    this.id,
    this.name,
    this.email,
    this.licenses,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  final _i1.PrismaUnion<bool, _i2.CustomerLicensesArgs>? licenses;

  final _i1.PrismaUnion<bool, _i2.CustomerCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses,
        '_count': $count,
      };
}

class LicenseSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
    this.payments,
    this.$count,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  final _i1.PrismaUnion<bool, _i2.LicenseCustomerArgs>? customer;

  final _i1.PrismaUnion<bool, _i2.LicenseProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.LicensePaymentsArgs>? payments;

  final _i1.PrismaUnion<bool, _i2.LicenseCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer,
        'product': product,
        'payments': payments,
        '_count': $count,
      };
}

class CustomerCreateWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCreateWithoutLicensesInput({
    required this.name,
    required this.email,
  });

  final String name;

  final String email;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

class CustomerUncheckedCreateWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUncheckedCreateWithoutLicensesInput({
    this.id,
    required this.name,
    required this.email,
  });

  final int? id;

  final String name;

  final String email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.email,
    this.licenses,
  });

  final int? id;

  final _i1
      .PrismaUnion<_i2.CustomerWhereInput, Iterable<_i2.CustomerWhereInput>>?
      AND;

  final Iterable<_i2.CustomerWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CustomerWhereInput, Iterable<_i2.CustomerWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i2.LicenseListRelationFilter? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class CustomerCreateOrConnectWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCreateOrConnectWithoutLicensesInput({
    required this.where,
    required this.create,
  });

  final _i2.CustomerWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CustomerCreateWithoutLicensesInput,
      _i2.CustomerUncheckedCreateWithoutLicensesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CustomerCreateNestedOneWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCreateNestedOneWithoutLicensesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CustomerCreateWithoutLicensesInput,
      _i2.CustomerUncheckedCreateWithoutLicensesInput>? create;

  final _i2.CustomerCreateOrConnectWithoutLicensesInput? connectOrCreate;

  final _i2.CustomerWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LicenseCreateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateWithoutPaymentsInput({
    required this.licenseKey,
    required this.userId,
    required this.customer,
    required this.product,
  });

  final String licenseKey;

  final String userId;

  final _i2.CustomerCreateNestedOneWithoutLicensesInput customer;

  final _i2.ProductCreateNestedOneWithoutLicenseInput product;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'product': product,
      };
}

class LicenseUncheckedCreateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateWithoutPaymentsInput({
    required this.licenseKey,
    required this.customerId,
    required this.userId,
    required this.productId,
  });

  final String licenseKey;

  final int customerId;

  final String userId;

  final int productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseCreateOrConnectWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateOrConnectWithoutPaymentsInput({
    required this.where,
    required this.create,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutPaymentsInput,
      _i2.LicenseUncheckedCreateWithoutPaymentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LicenseCreateNestedOneWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateNestedOneWithoutPaymentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutPaymentsInput,
      _i2.LicenseUncheckedCreateWithoutPaymentsInput>? create;

  final _i2.LicenseCreateOrConnectWithoutPaymentsInput? connectOrCreate;

  final _i2.LicenseWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PaymentCreateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateWithoutFeaturesInput({
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    required this.license,
  });

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  final _i2.LicenseCreateNestedOneWithoutPaymentsInput license;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
      };
}

class PaymentUncheckedCreateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedCreateWithoutFeaturesInput({
    this.id,
    required this.licenseKey,
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final int? id;

  final String licenseKey;

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentCreateOrConnectWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateOrConnectWithoutFeaturesInput({
    required this.where,
    required this.create,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentCreateWithoutFeaturesInput,
      _i2.PaymentUncheckedCreateWithoutFeaturesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PaymentCreateNestedManyWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateNestedManyWithoutFeaturesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutFeaturesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutFeaturesInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutFeaturesInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutFeaturesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutFeaturesInput,
          Iterable<_i2.PaymentCreateOrConnectWithoutFeaturesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FeatureCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateWithoutProductInput({
    required this.name,
    this.description,
    required this.type,
    this.trialPeriod,
    this.payments,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  final _i2.PaymentCreateNestedManyWithoutFeaturesInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class PaymentUncheckedCreateNestedManyWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedCreateNestedManyWithoutFeaturesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutFeaturesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutFeaturesInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutFeaturesInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutFeaturesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutFeaturesInput,
          Iterable<_i2.PaymentCreateOrConnectWithoutFeaturesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FeatureUncheckedCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedCreateWithoutProductInput({
    this.id,
    required this.name,
    this.description,
    required this.type,
    this.trialPeriod,
    this.payments,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  final _i2.PaymentUncheckedCreateNestedManyWithoutFeaturesInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class FeatureCreateOrConnectWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateOrConnectWithoutProductInput({
    required this.where,
    required this.create,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureCreateWithoutProductInput,
      _i2.FeatureUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FeatureCreateManyProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateManyProductInput({
    this.id,
    required this.name,
    this.description,
    required this.type,
    this.trialPeriod,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
      };
}

class FeatureCreateManyProductInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateManyProductInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.FeatureCreateManyProductInput,
      Iterable<_i2.FeatureCreateManyProductInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class FeatureCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutProductInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutProductInput,
      Iterable<_i2.FeatureCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.FeatureCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCreateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateWithoutLicenseInput({
    required this.name,
    this.description,
    this.features,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.FeatureCreateNestedManyWithoutProductInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'features': features,
      };
}

class FeatureUncheckedCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutProductInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutProductInput,
      Iterable<_i2.FeatureCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.FeatureCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductUncheckedCreateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateWithoutLicenseInput({
    this.id,
    required this.name,
    this.description,
    this.features,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.FeatureUncheckedCreateNestedManyWithoutProductInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'features': features,
      };
}

class ProductWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.description,
    this.license,
    this.features,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      AND;

  final Iterable<_i2.ProductWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.LicenseListRelationFilter? license;

  final _i2.FeatureListRelationFilter? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductCreateOrConnectWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateOrConnectWithoutLicenseInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLicenseInput,
      _i2.ProductUncheckedCreateWithoutLicenseInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCreateNestedOneWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateNestedOneWithoutLicenseInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLicenseInput,
      _i2.ProductUncheckedCreateWithoutLicenseInput>? create;

  final _i2.ProductCreateOrConnectWithoutLicenseInput? connectOrCreate;

  final _i2.ProductWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LicenseCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateWithoutProductInput({
    required this.licenseKey,
    required this.userId,
    required this.customer,
    this.payments,
  });

  final String licenseKey;

  final String userId;

  final _i2.CustomerCreateNestedOneWithoutLicensesInput customer;

  final _i2.PaymentCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'payments': payments,
      };
}

class FeatureUncheckedCreateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedCreateWithoutPaymentsInput({
    this.id,
    required this.name,
    this.description,
    required this.type,
    required this.productId,
    this.trialPeriod,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final int productId;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureCreateOrConnectWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateOrConnectWithoutPaymentsInput({
    required this.where,
    required this.create,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureCreateWithoutPaymentsInput,
      _i2.FeatureUncheckedCreateWithoutPaymentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FeatureUncheckedCreateNestedManyWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedCreateNestedManyWithoutPaymentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutPaymentsInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutPaymentsInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutPaymentsInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutPaymentsInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutPaymentsInput,
          Iterable<_i2.FeatureCreateOrConnectWithoutPaymentsInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PaymentUncheckedCreateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedCreateWithoutLicenseInput({
    this.id,
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final int? id;

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  final _i2.FeatureUncheckedCreateNestedManyWithoutPaymentsInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentCreateOrConnectWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateOrConnectWithoutLicenseInput({
    required this.where,
    required this.create,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentCreateWithoutLicenseInput,
      _i2.PaymentUncheckedCreateWithoutLicenseInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PaymentCreateManyLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateManyLicenseInput({
    this.id,
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final int? id;

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentCreateManyLicenseInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateManyLicenseInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PaymentCreateManyLicenseInput,
      Iterable<_i2.PaymentCreateManyLicenseInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PaymentUncheckedCreateNestedManyWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedCreateNestedManyWithoutLicenseInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutLicenseInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutLicenseInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutLicenseInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutLicenseInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutLicenseInput,
      Iterable<_i2.PaymentCreateOrConnectWithoutLicenseInput>>? connectOrCreate;

  final _i2.PaymentCreateManyLicenseInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class LicenseUncheckedCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateWithoutProductInput({
    required this.licenseKey,
    required this.customerId,
    required this.userId,
    this.payments,
  });

  final String licenseKey;

  final int customerId;

  final String userId;

  final _i2.PaymentUncheckedCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'payments': payments,
      };
}

class LicenseCreateOrConnectWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateOrConnectWithoutProductInput({
    required this.where,
    required this.create,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutProductInput,
      _i2.LicenseUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LicenseCreateManyProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateManyProductInput({
    required this.licenseKey,
    required this.customerId,
    required this.userId,
  });

  final String licenseKey;

  final int customerId;

  final String userId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
      };
}

class LicenseCreateManyProductInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateManyProductInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.LicenseCreateManyProductInput,
      Iterable<_i2.LicenseCreateManyProductInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class LicenseCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutProductInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutProductInput,
      Iterable<_i2.LicenseCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.LicenseCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCreateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateWithoutFeaturesInput({
    required this.name,
    this.description,
    this.license,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.LicenseCreateNestedManyWithoutProductInput? license;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'License': license,
      };
}

class LicenseUncheckedCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutProductInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutProductInput,
      Iterable<_i2.LicenseCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.LicenseCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductUncheckedCreateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateWithoutFeaturesInput({
    this.id,
    required this.name,
    this.description,
    this.license,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.LicenseUncheckedCreateNestedManyWithoutProductInput? license;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
      };
}

class ProductCreateOrConnectWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateOrConnectWithoutFeaturesInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutFeaturesInput,
      _i2.ProductUncheckedCreateWithoutFeaturesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCreateNestedOneWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateNestedOneWithoutFeaturesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutFeaturesInput,
      _i2.ProductUncheckedCreateWithoutFeaturesInput>? create;

  final _i2.ProductCreateOrConnectWithoutFeaturesInput? connectOrCreate;

  final _i2.ProductWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FeatureCreateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateWithoutPaymentsInput({
    required this.name,
    this.description,
    required this.type,
    this.trialPeriod,
    required this.product,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  final _i2.ProductCreateNestedOneWithoutFeaturesInput product;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'product': product,
      };
}

class FeatureCreateNestedManyWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateNestedManyWithoutPaymentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutPaymentsInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutPaymentsInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutPaymentsInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutPaymentsInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutPaymentsInput,
          Iterable<_i2.FeatureCreateOrConnectWithoutPaymentsInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PaymentCreateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateWithoutLicenseInput({
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  final _i2.FeatureCreateNestedManyWithoutPaymentsInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentCreateNestedManyWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateNestedManyWithoutLicenseInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutLicenseInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutLicenseInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutLicenseInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutLicenseInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutLicenseInput,
      Iterable<_i2.PaymentCreateOrConnectWithoutLicenseInput>>? connectOrCreate;

  final _i2.PaymentCreateManyLicenseInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class LicenseCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateInput({
    required this.licenseKey,
    required this.userId,
    required this.customer,
    required this.product,
    this.payments,
  });

  final String licenseKey;

  final String userId;

  final _i2.CustomerCreateNestedOneWithoutLicensesInput customer;

  final _i2.ProductCreateNestedOneWithoutLicenseInput product;

  final _i2.PaymentCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'product': product,
        'payments': payments,
      };
}

class LicenseUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateInput({
    required this.licenseKey,
    required this.customerId,
    required this.userId,
    required this.productId,
    this.payments,
  });

  final String licenseKey;

  final int customerId;

  final String userId;

  final int productId;

  final _i2.PaymentUncheckedCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'payments': payments,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class LicenseCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateManyInput({
    required this.licenseKey,
    required this.customerId,
    required this.userId,
    required this.productId,
  });

  final String licenseKey;

  final int customerId;

  final String userId;

  final int productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class CreateManyLicenseAndReturnOutputTypeCustomerArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLicenseAndReturnOutputTypeCustomerArgs({
    this.select,
    this.include,
  });

  final _i2.CustomerSelect? select;

  final _i2.CustomerInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyLicenseAndReturnOutputTypeProductArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLicenseAndReturnOutputTypeProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyLicenseAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLicenseAndReturnOutputTypeSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLicenseAndReturnOutputTypeCustomerArgs>?
      customer;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLicenseAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer,
        'product': product,
      };
}

class CreateManyLicenseAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLicenseAndReturnOutputTypeInclude({
    this.customer,
    this.product,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLicenseAndReturnOutputTypeCustomerArgs>?
      customer;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLicenseAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {
        'customer': customer,
        'product': product,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class CustomerUpdateWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpdateWithoutLicensesInput({
    this.name,
    this.email,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class CustomerUncheckedUpdateWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUncheckedUpdateWithoutLicensesInput({
    this.id,
    this.name,
    this.email,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerUpsertWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpsertWithoutLicensesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CustomerUpdateWithoutLicensesInput,
      _i2.CustomerUncheckedUpdateWithoutLicensesInput> update;

  final _i1.PrismaUnion<_i2.CustomerCreateWithoutLicensesInput,
      _i2.CustomerUncheckedCreateWithoutLicensesInput> create;

  final _i2.CustomerWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CustomerUpdateToOneWithWhereWithoutLicensesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpdateToOneWithWhereWithoutLicensesInput({
    this.where,
    required this.data,
  });

  final _i2.CustomerWhereInput? where;

  final _i1.PrismaUnion<_i2.CustomerUpdateWithoutLicensesInput,
      _i2.CustomerUncheckedUpdateWithoutLicensesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CustomerUpdateOneRequiredWithoutLicensesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpdateOneRequiredWithoutLicensesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CustomerCreateWithoutLicensesInput,
      _i2.CustomerUncheckedCreateWithoutLicensesInput>? create;

  final _i2.CustomerCreateOrConnectWithoutLicensesInput? connectOrCreate;

  final _i2.CustomerUpsertWithoutLicensesInput? upsert;

  final _i2.CustomerWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CustomerUpdateToOneWithWhereWithoutLicensesInput,
      _i1.PrismaUnion<_i2.CustomerUpdateWithoutLicensesInput,
          _i2.CustomerUncheckedUpdateWithoutLicensesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class EnumFeatureTypeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumFeatureTypeFieldUpdateOperationsInput({this.set});

  final _i3.FeatureType? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class LicenseUpdateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateWithoutPaymentsInput({
    this.licenseKey,
    this.userId,
    this.customer,
    this.product,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.CustomerUpdateOneRequiredWithoutLicensesNestedInput? customer;

  final _i2.ProductUpdateOneRequiredWithoutLicenseNestedInput? product;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'product': product,
      };
}

class LicenseUncheckedUpdateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateWithoutPaymentsInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? customerId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseUpsertWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpsertWithoutPaymentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutPaymentsInput,
      _i2.LicenseUncheckedUpdateWithoutPaymentsInput> update;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutPaymentsInput,
      _i2.LicenseUncheckedCreateWithoutPaymentsInput> create;

  final _i2.LicenseWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class LicenseUpdateToOneWithWhereWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateToOneWithWhereWithoutPaymentsInput({
    this.where,
    required this.data,
  });

  final _i2.LicenseWhereInput? where;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutPaymentsInput,
      _i2.LicenseUncheckedUpdateWithoutPaymentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LicenseUpdateOneRequiredWithoutPaymentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateOneRequiredWithoutPaymentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutPaymentsInput,
      _i2.LicenseUncheckedCreateWithoutPaymentsInput>? create;

  final _i2.LicenseCreateOrConnectWithoutPaymentsInput? connectOrCreate;

  final _i2.LicenseUpsertWithoutPaymentsInput? upsert;

  final _i2.LicenseWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.LicenseUpdateToOneWithWhereWithoutPaymentsInput,
      _i1.PrismaUnion<_i2.LicenseUpdateWithoutPaymentsInput,
          _i2.LicenseUncheckedUpdateWithoutPaymentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PaymentUpdateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateWithoutFeaturesInput({
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  final _i2.LicenseUpdateOneRequiredWithoutPaymentsNestedInput? license;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
      };
}

class PaymentUncheckedUpdateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateWithoutFeaturesInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentUpsertWithWhereUniqueWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpsertWithWhereUniqueWithoutFeaturesInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithoutFeaturesInput,
      _i2.PaymentUncheckedUpdateWithoutFeaturesInput> update;

  final _i1.PrismaUnion<_i2.PaymentCreateWithoutFeaturesInput,
      _i2.PaymentUncheckedCreateWithoutFeaturesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PaymentUpdateWithWhereUniqueWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateWithWhereUniqueWithoutFeaturesInput({
    required this.where,
    required this.data,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithoutFeaturesInput,
      _i2.PaymentUncheckedUpdateWithoutFeaturesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PaymentScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? AND;

  final Iterable<_i2.PaymentScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? activationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expirationDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? revoked;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateManyMutationInput({
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentUncheckedUpdateManyWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateManyWithoutFeaturesInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentUpdateManyWithWhereWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateManyWithWhereWithoutFeaturesInput({
    required this.where,
    required this.data,
  });

  final _i2.PaymentScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyMutationInput,
      _i2.PaymentUncheckedUpdateManyWithoutFeaturesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PaymentUpdateManyWithoutFeaturesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateManyWithoutFeaturesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutFeaturesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutFeaturesInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutFeaturesInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutFeaturesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutFeaturesInput,
          Iterable<_i2.PaymentCreateOrConnectWithoutFeaturesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentUpsertWithWhereUniqueWithoutFeaturesInput,
      Iterable<_i2.PaymentUpsertWithWhereUniqueWithoutFeaturesInput>>? upsert;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithWhereUniqueWithoutFeaturesInput,
      Iterable<_i2.PaymentUpdateWithWhereUniqueWithoutFeaturesInput>>? update;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyWithWhereWithoutFeaturesInput,
      Iterable<_i2.PaymentUpdateManyWithWhereWithoutFeaturesInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class FeatureUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateWithoutProductInput({
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  final _i2.PaymentUpdateManyWithoutFeaturesNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class PaymentUncheckedUpdateManyWithoutFeaturesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateManyWithoutFeaturesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutFeaturesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutFeaturesInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutFeaturesInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutFeaturesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutFeaturesInput,
          Iterable<_i2.PaymentCreateOrConnectWithoutFeaturesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentUpsertWithWhereUniqueWithoutFeaturesInput,
      Iterable<_i2.PaymentUpsertWithWhereUniqueWithoutFeaturesInput>>? upsert;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithWhereUniqueWithoutFeaturesInput,
      Iterable<_i2.PaymentUpdateWithWhereUniqueWithoutFeaturesInput>>? update;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyWithWhereWithoutFeaturesInput,
      Iterable<_i2.PaymentUpdateManyWithWhereWithoutFeaturesInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class FeatureUncheckedUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateWithoutProductInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
    this.payments,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  final _i2.PaymentUncheckedUpdateManyWithoutFeaturesNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class FeatureUpsertWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpsertWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithoutProductInput,
      _i2.FeatureUncheckedUpdateWithoutProductInput> update;

  final _i1.PrismaUnion<_i2.FeatureCreateWithoutProductInput,
      _i2.FeatureUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class FeatureUpdateWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithoutProductInput,
      _i2.FeatureUncheckedUpdateWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FeatureScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? AND;

  final Iterable<_i2.FeatureScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.EnumFeatureTypeFilter, _i3.FeatureType>? type;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateManyMutationInput({
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
      };
}

class FeatureUncheckedUpdateManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateManyWithoutProductInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
      };
}

class FeatureUpdateManyWithWhereWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateManyWithWhereWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.FeatureScalarWhereInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyMutationInput,
      _i2.FeatureUncheckedUpdateManyWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FeatureUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutProductInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutProductInput,
      Iterable<_i2.FeatureCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.FeatureUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.FeatureCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.FeatureUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.FeatureUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUpdateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithoutLicenseInput({
    this.name,
    this.description,
    this.features,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.FeatureUpdateManyWithoutProductNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'features': features,
      };
}

class FeatureUncheckedUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutProductInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutProductInput,
      Iterable<_i2.FeatureCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.FeatureUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.FeatureCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.FeatureUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.FeatureUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUncheckedUpdateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateWithoutLicenseInput({
    this.id,
    this.name,
    this.description,
    this.features,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.FeatureUncheckedUpdateManyWithoutProductNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'features': features,
      };
}

class ProductUpsertWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpsertWithoutLicenseInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutLicenseInput,
      _i2.ProductUncheckedUpdateWithoutLicenseInput> update;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLicenseInput,
      _i2.ProductUncheckedCreateWithoutLicenseInput> create;

  final _i2.ProductWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProductUpdateToOneWithWhereWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateToOneWithWhereWithoutLicenseInput({
    this.where,
    required this.data,
  });

  final _i2.ProductWhereInput? where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutLicenseInput,
      _i2.ProductUncheckedUpdateWithoutLicenseInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUpdateOneRequiredWithoutLicenseNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateOneRequiredWithoutLicenseNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLicenseInput,
      _i2.ProductUncheckedCreateWithoutLicenseInput>? create;

  final _i2.ProductCreateOrConnectWithoutLicenseInput? connectOrCreate;

  final _i2.ProductUpsertWithoutLicenseInput? upsert;

  final _i2.ProductWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProductUpdateToOneWithWhereWithoutLicenseInput,
      _i1.PrismaUnion<_i2.ProductUpdateWithoutLicenseInput,
          _i2.ProductUncheckedUpdateWithoutLicenseInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class LicenseUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateWithoutProductInput({
    this.licenseKey,
    this.userId,
    this.customer,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.CustomerUpdateOneRequiredWithoutLicensesNestedInput? customer;

  final _i2.PaymentUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'payments': payments,
      };
}

class FeatureUncheckedUpdateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateWithoutPaymentsInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureUpdateWithWhereUniqueWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateWithWhereUniqueWithoutPaymentsInput({
    required this.where,
    required this.data,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithoutPaymentsInput,
      _i2.FeatureUncheckedUpdateWithoutPaymentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FeatureUncheckedUpdateManyWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateManyWithoutPaymentsInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureUpdateManyWithWhereWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateManyWithWhereWithoutPaymentsInput({
    required this.where,
    required this.data,
  });

  final _i2.FeatureScalarWhereInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyMutationInput,
      _i2.FeatureUncheckedUpdateManyWithoutPaymentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FeatureUncheckedUpdateManyWithoutPaymentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateManyWithoutPaymentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutPaymentsInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutPaymentsInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutPaymentsInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutPaymentsInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutPaymentsInput,
          Iterable<_i2.FeatureCreateOrConnectWithoutPaymentsInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureUpsertWithWhereUniqueWithoutPaymentsInput,
      Iterable<_i2.FeatureUpsertWithWhereUniqueWithoutPaymentsInput>>? upsert;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithWhereUniqueWithoutPaymentsInput,
      Iterable<_i2.FeatureUpdateWithWhereUniqueWithoutPaymentsInput>>? update;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyWithWhereWithoutPaymentsInput,
      Iterable<_i2.FeatureUpdateManyWithWhereWithoutPaymentsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PaymentUncheckedUpdateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateWithoutLicenseInput({
    this.id,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  final _i2.FeatureUncheckedUpdateManyWithoutPaymentsNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentUpdateWithWhereUniqueWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateWithWhereUniqueWithoutLicenseInput({
    required this.where,
    required this.data,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithoutLicenseInput,
      _i2.PaymentUncheckedUpdateWithoutLicenseInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PaymentUncheckedUpdateManyWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateManyWithoutLicenseInput({
    this.id,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentUpdateManyWithWhereWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateManyWithWhereWithoutLicenseInput({
    required this.where,
    required this.data,
  });

  final _i2.PaymentScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyMutationInput,
      _i2.PaymentUncheckedUpdateManyWithoutLicenseInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PaymentUncheckedUpdateManyWithoutLicenseNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateManyWithoutLicenseNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutLicenseInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutLicenseInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutLicenseInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutLicenseInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutLicenseInput,
      Iterable<_i2.PaymentCreateOrConnectWithoutLicenseInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentUpsertWithWhereUniqueWithoutLicenseInput,
      Iterable<_i2.PaymentUpsertWithWhereUniqueWithoutLicenseInput>>? upsert;

  final _i2.PaymentCreateManyLicenseInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithWhereUniqueWithoutLicenseInput,
      Iterable<_i2.PaymentUpdateWithWhereUniqueWithoutLicenseInput>>? update;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyWithWhereWithoutLicenseInput,
      Iterable<_i2.PaymentUpdateManyWithWhereWithoutLicenseInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class LicenseUncheckedUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateWithoutProductInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? customerId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.PaymentUncheckedUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'payments': payments,
      };
}

class LicenseUpsertWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpsertWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutProductInput,
      _i2.LicenseUncheckedUpdateWithoutProductInput> update;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutProductInput,
      _i2.LicenseUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class LicenseUpdateWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutProductInput,
      _i2.LicenseUncheckedUpdateWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LicenseScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? AND;

  final Iterable<_i2.LicenseScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.IntFilter, int>? customerId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateManyMutationInput({
    this.licenseKey,
    this.userId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
      };
}

class LicenseUncheckedUpdateManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateManyWithoutProductInput({
    this.licenseKey,
    this.customerId,
    this.userId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? customerId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
      };
}

class LicenseUpdateManyWithWhereWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateManyWithWhereWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.LicenseScalarWhereInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyMutationInput,
      _i2.LicenseUncheckedUpdateManyWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LicenseUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutProductInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutProductInput,
      Iterable<_i2.LicenseCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.LicenseUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LicenseUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.LicenseCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LicenseUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.LicenseUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUpdateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithoutFeaturesInput({
    this.name,
    this.description,
    this.license,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.LicenseUpdateManyWithoutProductNestedInput? license;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'License': license,
      };
}

class LicenseUncheckedUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutProductInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutProductInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutProductInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutProductInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutProductInput,
      Iterable<_i2.LicenseCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.LicenseUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LicenseUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.LicenseCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LicenseUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.LicenseUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUncheckedUpdateWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateWithoutFeaturesInput({
    this.id,
    this.name,
    this.description,
    this.license,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.LicenseUncheckedUpdateManyWithoutProductNestedInput? license;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
      };
}

class ProductUpsertWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpsertWithoutFeaturesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutFeaturesInput,
      _i2.ProductUncheckedUpdateWithoutFeaturesInput> update;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutFeaturesInput,
      _i2.ProductUncheckedCreateWithoutFeaturesInput> create;

  final _i2.ProductWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProductUpdateToOneWithWhereWithoutFeaturesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateToOneWithWhereWithoutFeaturesInput({
    this.where,
    required this.data,
  });

  final _i2.ProductWhereInput? where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutFeaturesInput,
      _i2.ProductUncheckedUpdateWithoutFeaturesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUpdateOneRequiredWithoutFeaturesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateOneRequiredWithoutFeaturesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutFeaturesInput,
      _i2.ProductUncheckedCreateWithoutFeaturesInput>? create;

  final _i2.ProductCreateOrConnectWithoutFeaturesInput? connectOrCreate;

  final _i2.ProductUpsertWithoutFeaturesInput? upsert;

  final _i2.ProductWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProductUpdateToOneWithWhereWithoutFeaturesInput,
      _i1.PrismaUnion<_i2.ProductUpdateWithoutFeaturesInput,
          _i2.ProductUncheckedUpdateWithoutFeaturesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class FeatureUpdateWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateWithoutPaymentsInput({
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
    this.product,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  final _i2.ProductUpdateOneRequiredWithoutFeaturesNestedInput? product;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'product': product,
      };
}

class FeatureUpsertWithWhereUniqueWithoutPaymentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpsertWithWhereUniqueWithoutPaymentsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FeatureWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithoutPaymentsInput,
      _i2.FeatureUncheckedUpdateWithoutPaymentsInput> update;

  final _i1.PrismaUnion<_i2.FeatureCreateWithoutPaymentsInput,
      _i2.FeatureUncheckedCreateWithoutPaymentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class FeatureUpdateManyWithoutPaymentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateManyWithoutPaymentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FeatureCreateWithoutPaymentsInput,
          _i1.PrismaUnion<
              Iterable<_i2.FeatureCreateWithoutPaymentsInput>,
              _i1.PrismaUnion<_i2.FeatureUncheckedCreateWithoutPaymentsInput,
                  Iterable<_i2.FeatureUncheckedCreateWithoutPaymentsInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FeatureCreateOrConnectWithoutPaymentsInput,
          Iterable<_i2.FeatureCreateOrConnectWithoutPaymentsInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FeatureUpsertWithWhereUniqueWithoutPaymentsInput,
      Iterable<_i2.FeatureUpsertWithWhereUniqueWithoutPaymentsInput>>? upsert;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FeatureWhereUniqueInput,
      Iterable<_i2.FeatureWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FeatureUpdateWithWhereUniqueWithoutPaymentsInput,
      Iterable<_i2.FeatureUpdateWithWhereUniqueWithoutPaymentsInput>>? update;

  final _i1.PrismaUnion<_i2.FeatureUpdateManyWithWhereWithoutPaymentsInput,
      Iterable<_i2.FeatureUpdateManyWithWhereWithoutPaymentsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereInput,
      Iterable<_i2.FeatureScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PaymentUpdateWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateWithoutLicenseInput({
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  final _i2.FeatureUpdateManyWithoutPaymentsNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentUpsertWithWhereUniqueWithoutLicenseInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpsertWithWhereUniqueWithoutLicenseInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PaymentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithoutLicenseInput,
      _i2.PaymentUncheckedUpdateWithoutLicenseInput> update;

  final _i1.PrismaUnion<_i2.PaymentCreateWithoutLicenseInput,
      _i2.PaymentUncheckedCreateWithoutLicenseInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PaymentUpdateManyWithoutLicenseNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateManyWithoutLicenseNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PaymentCreateWithoutLicenseInput,
          _i1.PrismaUnion<
              Iterable<_i2.PaymentCreateWithoutLicenseInput>,
              _i1.PrismaUnion<_i2.PaymentUncheckedCreateWithoutLicenseInput,
                  Iterable<_i2.PaymentUncheckedCreateWithoutLicenseInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PaymentCreateOrConnectWithoutLicenseInput,
      Iterable<_i2.PaymentCreateOrConnectWithoutLicenseInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PaymentUpsertWithWhereUniqueWithoutLicenseInput,
      Iterable<_i2.PaymentUpsertWithWhereUniqueWithoutLicenseInput>>? upsert;

  final _i2.PaymentCreateManyLicenseInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PaymentWhereUniqueInput,
      Iterable<_i2.PaymentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PaymentUpdateWithWhereUniqueWithoutLicenseInput,
      Iterable<_i2.PaymentUpdateWithWhereUniqueWithoutLicenseInput>>? update;

  final _i1.PrismaUnion<_i2.PaymentUpdateManyWithWhereWithoutLicenseInput,
      Iterable<_i2.PaymentUpdateManyWithWhereWithoutLicenseInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereInput,
      Iterable<_i2.PaymentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class LicenseUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateInput({
    this.licenseKey,
    this.userId,
    this.customer,
    this.product,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.CustomerUpdateOneRequiredWithoutLicensesNestedInput? customer;

  final _i2.ProductUpdateOneRequiredWithoutLicenseNestedInput? product;

  final _i2.PaymentUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'customer': customer,
        'product': product,
        'payments': payments,
      };
}

class LicenseUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? customerId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i2.PaymentUncheckedUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'payments': payments,
      };
}

class LicenseUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateManyInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? customerId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseCountAggregateOutputType {
  const LicenseCountAggregateOutputType({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.$all,
  });

  factory LicenseCountAggregateOutputType.fromJson(Map json) =>
      LicenseCountAggregateOutputType(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
        $all: json['_all'],
      );

  final int? licenseKey;

  final int? customerId;

  final int? userId;

  final int? productId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        '_all': $all,
      };
}

class LicenseAvgAggregateOutputType {
  const LicenseAvgAggregateOutputType({
    this.customerId,
    this.productId,
  });

  factory LicenseAvgAggregateOutputType.fromJson(Map json) =>
      LicenseAvgAggregateOutputType(
        customerId: json['customer_id'],
        productId: json['product_id'],
      );

  final double? customerId;

  final double? productId;

  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseSumAggregateOutputType {
  const LicenseSumAggregateOutputType({
    this.customerId,
    this.productId,
  });

  factory LicenseSumAggregateOutputType.fromJson(Map json) =>
      LicenseSumAggregateOutputType(
        customerId: json['customer_id'],
        productId: json['product_id'],
      );

  final int? customerId;

  final int? productId;

  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseMinAggregateOutputType {
  const LicenseMinAggregateOutputType({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  factory LicenseMinAggregateOutputType.fromJson(Map json) =>
      LicenseMinAggregateOutputType(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
      );

  final String? licenseKey;

  final int? customerId;

  final String? userId;

  final int? productId;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseMaxAggregateOutputType {
  const LicenseMaxAggregateOutputType({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  factory LicenseMaxAggregateOutputType.fromJson(Map json) =>
      LicenseMaxAggregateOutputType(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
      );

  final String? licenseKey;

  final int? customerId;

  final String? userId;

  final int? productId;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseGroupByOutputType {
  const LicenseGroupByOutputType({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory LicenseGroupByOutputType.fromJson(Map json) =>
      LicenseGroupByOutputType(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
        $count: json['_count'] is Map
            ? _i2.LicenseCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LicenseAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LicenseSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LicenseMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LicenseMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? licenseKey;

  final int? customerId;

  final String? userId;

  final int? productId;

  final _i2.LicenseCountAggregateOutputType? $count;

  final _i2.LicenseAvgAggregateOutputType? $avg;

  final _i2.LicenseSumAggregateOutputType? $sum;

  final _i2.LicenseMinAggregateOutputType? $min;

  final _i2.LicenseMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class LicenseCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCountOrderByAggregateInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseAvgOrderByAggregateInput({
    this.customerId,
    this.productId,
  });

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? productId;

  @override
  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseMaxOrderByAggregateInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseMinOrderByAggregateInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseSumOrderByAggregateInput({
    this.customerId,
    this.productId,
  });

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? productId;

  @override
  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseOrderByWithAggregationInput({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? customerId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? productId;

  final _i2.LicenseCountOrderByAggregateInput? $count;

  final _i2.LicenseAvgOrderByAggregateInput? $avg;

  final _i2.LicenseMaxOrderByAggregateInput? $max;

  final _i2.LicenseMinOrderByAggregateInput? $min;

  final _i2.LicenseSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class LicenseScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final _i1.PrismaUnion<_i2.LicenseScalarWhereWithAggregatesInput,
      Iterable<_i2.LicenseScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.LicenseScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereWithAggregatesInput,
      Iterable<_i2.LicenseScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? customerId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? productId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCountAggregateOutputTypeSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.$all,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        '_all': $all,
      };
}

class LicenseGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeCountArgs({this.select});

  final _i2.LicenseCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseAvgAggregateOutputTypeSelect({
    this.customerId,
    this.productId,
  });

  final bool? customerId;

  final bool? productId;

  @override
  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeAvgArgs({this.select});

  final _i2.LicenseAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseSumAggregateOutputTypeSelect({
    this.customerId,
    this.productId,
  });

  final bool? customerId;

  final bool? productId;

  @override
  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'product_id': productId,
      };
}

class LicenseGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeSumArgs({this.select});

  final _i2.LicenseSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseMinAggregateOutputTypeSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeMinArgs({this.select});

  final _i2.LicenseMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseMaxAggregateOutputTypeSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeMaxArgs({this.select});

  final _i2.LicenseMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LicenseGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseGroupByOutputTypeSelect({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? licenseKey;

  final bool? customerId;

  final bool? userId;

  final bool? productId;

  final _i1.PrismaUnion<bool, _i2.LicenseGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.LicenseGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.LicenseGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.LicenseGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LicenseGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateLicense {
  const AggregateLicense({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateLicense.fromJson(Map json) => AggregateLicense(
        $count: json['_count'] is Map
            ? _i2.LicenseCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LicenseAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LicenseSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LicenseMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LicenseMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.LicenseCountAggregateOutputType? $count;

  final _i2.LicenseAvgAggregateOutputType? $avg;

  final _i2.LicenseSumAggregateOutputType? $sum;

  final _i2.LicenseMinAggregateOutputType? $min;

  final _i2.LicenseMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateLicenseCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseCountArgs({this.select});

  final _i2.LicenseCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLicenseAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseAvgArgs({this.select});

  final _i2.LicenseAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLicenseSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseSumArgs({this.select});

  final _i2.LicenseSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLicenseMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseMinArgs({this.select});

  final _i2.LicenseMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLicenseMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseMaxArgs({this.select});

  final _i2.LicenseMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLicenseSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLicenseSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLicenseCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLicenseAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateLicenseSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateLicenseMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLicenseMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum ProductScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Product'),
  name$<String>('name', 'Product'),
  description<String>('description', 'Product');

  const ProductScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProductCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateInput({
    required this.name,
    this.description,
    this.license,
    this.features,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.LicenseCreateNestedManyWithoutProductInput? license;

  final _i2.FeatureCreateNestedManyWithoutProductInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateInput({
    this.id,
    required this.name,
    this.description,
    this.license,
    this.features,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.LicenseUncheckedCreateNestedManyWithoutProductInput? license;

  final _i2.FeatureUncheckedCreateNestedManyWithoutProductInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyInput({
    this.id,
    required this.name,
    this.description,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class CreateManyProductAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateInput({
    this.name,
    this.description,
    this.license,
    this.features,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.LicenseUpdateManyWithoutProductNestedInput? license;

  final _i2.FeatureUpdateManyWithoutProductNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateInput({
    this.id,
    this.name,
    this.description,
    this.license,
    this.features,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.LicenseUncheckedUpdateManyWithoutProductNestedInput? license;

  final _i2.FeatureUncheckedUpdateManyWithoutProductNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license,
        'features': features,
      };
}

class ProductUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyMutationInput({
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
      };
}

class ProductUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductCountAggregateOutputType {
  const ProductCountAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.$all,
  });

  factory ProductCountAggregateOutputType.fromJson(Map json) =>
      ProductCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? description;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        '_all': $all,
      };
}

class ProductAvgAggregateOutputType {
  const ProductAvgAggregateOutputType({this.id});

  factory ProductAvgAggregateOutputType.fromJson(Map json) =>
      ProductAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class ProductSumAggregateOutputType {
  const ProductSumAggregateOutputType({this.id});

  factory ProductSumAggregateOutputType.fromJson(Map json) =>
      ProductSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class ProductMinAggregateOutputType {
  const ProductMinAggregateOutputType({
    this.id,
    this.name,
    this.description,
  });

  factory ProductMinAggregateOutputType.fromJson(Map json) =>
      ProductMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
      );

  final int? id;

  final String? name;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductMaxAggregateOutputType {
  const ProductMaxAggregateOutputType({
    this.id,
    this.name,
    this.description,
  });

  factory ProductMaxAggregateOutputType.fromJson(Map json) =>
      ProductMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
      );

  final int? id;

  final String? name;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductGroupByOutputType {
  const ProductGroupByOutputType({
    this.id,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory ProductGroupByOutputType.fromJson(Map json) =>
      ProductGroupByOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        $count: json['_count'] is Map
            ? _i2.ProductCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final String? description;

  final _i2.ProductCountAggregateOutputType? $count;

  final _i2.ProductAvgAggregateOutputType? $avg;

  final _i2.ProductSumAggregateOutputType? $sum;

  final _i2.ProductMinAggregateOutputType? $min;

  final _i2.ProductMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProductCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class ProductMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMinOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class ProductOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductOrderByWithAggregationInput({
    this.id,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.ProductCountOrderByAggregateInput? $count;

  final _i2.ProductAvgOrderByAggregateInput? $avg;

  final _i2.ProductMaxOrderByAggregateInput? $max;

  final _i2.ProductMinOrderByAggregateInput? $min;

  final _i2.ProductSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ProductScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<_i2.ProductScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProductScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProductScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        '_all': $all,
      };
}

class ProductGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeCountArgs({this.select});

  final _i2.ProductCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class ProductGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeAvgArgs({this.select});

  final _i2.ProductAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class ProductGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeSumArgs({this.select});

  final _i2.ProductSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeMinArgs({this.select});

  final _i2.ProductMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };
}

class ProductGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProductMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProduct {
  const AggregateProduct({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateProduct.fromJson(Map json) => AggregateProduct(
        $count: json['_count'] is Map
            ? _i2.ProductCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProductCountAggregateOutputType? $count;

  final _i2.ProductAvgAggregateOutputType? $avg;

  final _i2.ProductSumAggregateOutputType? $sum;

  final _i2.ProductMinAggregateOutputType? $min;

  final _i2.ProductMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProductCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCountArgs({this.select});

  final _i2.ProductCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductAvgArgs({this.select});

  final _i2.ProductAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductSumArgs({this.select});

  final _i2.ProductSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductMinArgs({this.select});

  final _i2.ProductMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductMaxArgs({this.select});

  final _i2.ProductMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProductCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProductAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateProductSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateProductMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProductMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum CustomerScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Customer'),
  name$<String>('name', 'Customer'),
  email<String>('email', 'Customer');

  const CustomerScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class LicenseCreateWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateWithoutCustomerInput({
    required this.licenseKey,
    required this.userId,
    required this.product,
    this.payments,
  });

  final String licenseKey;

  final String userId;

  final _i2.ProductCreateNestedOneWithoutLicenseInput product;

  final _i2.PaymentCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product': product,
        'payments': payments,
      };
}

class LicenseUncheckedCreateWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateWithoutCustomerInput({
    required this.licenseKey,
    required this.userId,
    required this.productId,
    this.payments,
  });

  final String licenseKey;

  final String userId;

  final int productId;

  final _i2.PaymentUncheckedCreateNestedManyWithoutLicenseInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product_id': productId,
        'payments': payments,
      };
}

class LicenseCreateOrConnectWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateOrConnectWithoutCustomerInput({
    required this.where,
    required this.create,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutCustomerInput,
      _i2.LicenseUncheckedCreateWithoutCustomerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LicenseCreateManyCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateManyCustomerInput({
    required this.licenseKey,
    required this.userId,
    required this.productId,
  });

  final String licenseKey;

  final String userId;

  final int productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseCreateManyCustomerInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateManyCustomerInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.LicenseCreateManyCustomerInput,
      Iterable<_i2.LicenseCreateManyCustomerInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class LicenseCreateNestedManyWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseCreateNestedManyWithoutCustomerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutCustomerInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutCustomerInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutCustomerInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutCustomerInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutCustomerInput,
          Iterable<_i2.LicenseCreateOrConnectWithoutCustomerInput>>?
      connectOrCreate;

  final _i2.LicenseCreateManyCustomerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CustomerCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCreateInput({
    required this.name,
    required this.email,
    this.licenses,
  });

  final String name;

  final String email;

  final _i2.LicenseCreateNestedManyWithoutCustomerInput? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class LicenseUncheckedCreateNestedManyWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedCreateNestedManyWithoutCustomerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutCustomerInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutCustomerInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutCustomerInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutCustomerInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutCustomerInput,
          Iterable<_i2.LicenseCreateOrConnectWithoutCustomerInput>>?
      connectOrCreate;

  final _i2.LicenseCreateManyCustomerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CustomerUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUncheckedCreateInput({
    this.id,
    required this.name,
    required this.email,
    this.licenses,
  });

  final int? id;

  final String name;

  final String email;

  final _i2.LicenseUncheckedCreateNestedManyWithoutCustomerInput? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class CustomerCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCreateManyInput({
    this.id,
    required this.name,
    required this.email,
  });

  final int? id;

  final String name;

  final String email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CreateManyCustomerAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyCustomerAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.email,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class LicenseUpdateWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateWithoutCustomerInput({
    this.licenseKey,
    this.userId,
    this.product,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.ProductUpdateOneRequiredWithoutLicenseNestedInput? product;

  final _i2.PaymentUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product': product,
        'payments': payments,
      };
}

class LicenseUncheckedUpdateWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateWithoutCustomerInput({
    this.licenseKey,
    this.userId,
    this.productId,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i2.PaymentUncheckedUpdateManyWithoutLicenseNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product_id': productId,
        'payments': payments,
      };
}

class LicenseUpsertWithWhereUniqueWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpsertWithWhereUniqueWithoutCustomerInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutCustomerInput,
      _i2.LicenseUncheckedUpdateWithoutCustomerInput> update;

  final _i1.PrismaUnion<_i2.LicenseCreateWithoutCustomerInput,
      _i2.LicenseUncheckedCreateWithoutCustomerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class LicenseUpdateWithWhereUniqueWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateWithWhereUniqueWithoutCustomerInput({
    required this.where,
    required this.data,
  });

  final _i2.LicenseWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithoutCustomerInput,
      _i2.LicenseUncheckedUpdateWithoutCustomerInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LicenseUncheckedUpdateManyWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateManyWithoutCustomerInput({
    this.licenseKey,
    this.userId,
    this.productId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  @override
  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'user_id': userId,
        'product_id': productId,
      };
}

class LicenseUpdateManyWithWhereWithoutCustomerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateManyWithWhereWithoutCustomerInput({
    required this.where,
    required this.data,
  });

  final _i2.LicenseScalarWhereInput where;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyMutationInput,
      _i2.LicenseUncheckedUpdateManyWithoutCustomerInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LicenseUpdateManyWithoutCustomerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUpdateManyWithoutCustomerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutCustomerInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutCustomerInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutCustomerInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutCustomerInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutCustomerInput,
          Iterable<_i2.LicenseCreateOrConnectWithoutCustomerInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.LicenseUpsertWithWhereUniqueWithoutCustomerInput,
      Iterable<_i2.LicenseUpsertWithWhereUniqueWithoutCustomerInput>>? upsert;

  final _i2.LicenseCreateManyCustomerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithWhereUniqueWithoutCustomerInput,
      Iterable<_i2.LicenseUpdateWithWhereUniqueWithoutCustomerInput>>? update;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyWithWhereWithoutCustomerInput,
      Iterable<_i2.LicenseUpdateManyWithWhereWithoutCustomerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CustomerUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpdateInput({
    this.name,
    this.email,
    this.licenses,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i2.LicenseUpdateManyWithoutCustomerNestedInput? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class LicenseUncheckedUpdateManyWithoutCustomerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LicenseUncheckedUpdateManyWithoutCustomerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LicenseCreateWithoutCustomerInput,
          _i1.PrismaUnion<
              Iterable<_i2.LicenseCreateWithoutCustomerInput>,
              _i1.PrismaUnion<_i2.LicenseUncheckedCreateWithoutCustomerInput,
                  Iterable<_i2.LicenseUncheckedCreateWithoutCustomerInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LicenseCreateOrConnectWithoutCustomerInput,
          Iterable<_i2.LicenseCreateOrConnectWithoutCustomerInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.LicenseUpsertWithWhereUniqueWithoutCustomerInput,
      Iterable<_i2.LicenseUpsertWithWhereUniqueWithoutCustomerInput>>? upsert;

  final _i2.LicenseCreateManyCustomerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LicenseWhereUniqueInput,
      Iterable<_i2.LicenseWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LicenseUpdateWithWhereUniqueWithoutCustomerInput,
      Iterable<_i2.LicenseUpdateWithWhereUniqueWithoutCustomerInput>>? update;

  final _i1.PrismaUnion<_i2.LicenseUpdateManyWithWhereWithoutCustomerInput,
      Iterable<_i2.LicenseUpdateManyWithWhereWithoutCustomerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LicenseScalarWhereInput,
      Iterable<_i2.LicenseScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CustomerUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUncheckedUpdateInput({
    this.id,
    this.name,
    this.email,
    this.licenses,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i2.LicenseUncheckedUpdateManyWithoutCustomerNestedInput? licenses;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses,
      };
}

class CustomerUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUpdateManyMutationInput({
    this.name,
    this.email,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

class CustomerUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.email,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerCountAggregateOutputType {
  const CustomerCountAggregateOutputType({
    this.id,
    this.name,
    this.email,
    this.$all,
  });

  factory CustomerCountAggregateOutputType.fromJson(Map json) =>
      CustomerCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? email;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        '_all': $all,
      };
}

class CustomerAvgAggregateOutputType {
  const CustomerAvgAggregateOutputType({this.id});

  factory CustomerAvgAggregateOutputType.fromJson(Map json) =>
      CustomerAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerSumAggregateOutputType {
  const CustomerSumAggregateOutputType({this.id});

  factory CustomerSumAggregateOutputType.fromJson(Map json) =>
      CustomerSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerMinAggregateOutputType {
  const CustomerMinAggregateOutputType({
    this.id,
    this.name,
    this.email,
  });

  factory CustomerMinAggregateOutputType.fromJson(Map json) =>
      CustomerMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        email: json['email'],
      );

  final int? id;

  final String? name;

  final String? email;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerMaxAggregateOutputType {
  const CustomerMaxAggregateOutputType({
    this.id,
    this.name,
    this.email,
  });

  factory CustomerMaxAggregateOutputType.fromJson(Map json) =>
      CustomerMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        email: json['email'],
      );

  final int? id;

  final String? name;

  final String? email;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerGroupByOutputType {
  const CustomerGroupByOutputType({
    this.id,
    this.name,
    this.email,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory CustomerGroupByOutputType.fromJson(Map json) =>
      CustomerGroupByOutputType(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        $count: json['_count'] is Map
            ? _i2.CustomerCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.CustomerAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.CustomerSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CustomerMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CustomerMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final String? email;

  final _i2.CustomerCountAggregateOutputType? $count;

  final _i2.CustomerAvgAggregateOutputType? $avg;

  final _i2.CustomerSumAggregateOutputType? $sum;

  final _i2.CustomerMinAggregateOutputType? $min;

  final _i2.CustomerMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class CustomerCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCountOrderByAggregateInput({
    this.id,
    this.name,
    this.email,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.email,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerMinOrderByAggregateInput({
    this.id,
    this.name,
    this.email,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerOrderByWithAggregationInput({
    this.id,
    this.name,
    this.email,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? email;

  final _i2.CustomerCountOrderByAggregateInput? $count;

  final _i2.CustomerAvgOrderByAggregateInput? $avg;

  final _i2.CustomerMaxOrderByAggregateInput? $max;

  final _i2.CustomerMinOrderByAggregateInput? $min;

  final _i2.CustomerSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class CustomerScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.email,
  });

  final _i1.PrismaUnion<_i2.CustomerScalarWhereWithAggregatesInput,
      Iterable<_i2.CustomerScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CustomerScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CustomerScalarWhereWithAggregatesInput,
      Iterable<_i2.CustomerScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.email,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        '_all': $all,
      };
}

class CustomerGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeCountArgs({this.select});

  final _i2.CustomerCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeAvgArgs({this.select});

  final _i2.CustomerAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class CustomerGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeSumArgs({this.select});

  final _i2.CustomerSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.email,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeMinArgs({this.select});

  final _i2.CustomerMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.email,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}

class CustomerGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeMaxArgs({this.select});

  final _i2.CustomerMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CustomerGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CustomerGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.email,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? email;

  final _i1.PrismaUnion<bool, _i2.CustomerGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CustomerGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.CustomerGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.CustomerGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CustomerGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCustomer {
  const AggregateCustomer({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateCustomer.fromJson(Map json) => AggregateCustomer(
        $count: json['_count'] is Map
            ? _i2.CustomerCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.CustomerAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.CustomerSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CustomerMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CustomerMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CustomerCountAggregateOutputType? $count;

  final _i2.CustomerAvgAggregateOutputType? $avg;

  final _i2.CustomerSumAggregateOutputType? $sum;

  final _i2.CustomerMinAggregateOutputType? $min;

  final _i2.CustomerMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateCustomerCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerCountArgs({this.select});

  final _i2.CustomerCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCustomerAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerAvgArgs({this.select});

  final _i2.CustomerAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCustomerSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerSumArgs({this.select});

  final _i2.CustomerSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCustomerMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerMinArgs({this.select});

  final _i2.CustomerMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCustomerMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerMaxArgs({this.select});

  final _i2.CustomerMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCustomerSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCustomerSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCustomerCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCustomerAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateCustomerSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateCustomerMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCustomerMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class FeatureCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateInput({
    required this.name,
    this.description,
    required this.type,
    this.trialPeriod,
    required this.product,
    this.payments,
  });

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  final _i2.ProductCreateNestedOneWithoutFeaturesInput product;

  final _i2.PaymentCreateNestedManyWithoutFeaturesInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
      };
}

class FeatureUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedCreateInput({
    this.id,
    required this.name,
    this.description,
    required this.type,
    required this.productId,
    this.trialPeriod,
    this.payments,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final int productId;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  final _i2.PaymentUncheckedCreateNestedManyWithoutFeaturesInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class FeatureCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCreateManyInput({
    this.id,
    required this.name,
    this.description,
    required this.type,
    required this.productId,
    this.trialPeriod,
  });

  final int? id;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i3.FeatureType type;

  final int productId;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class CreateManyFeatureAndReturnOutputTypeProductArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyFeatureAndReturnOutputTypeProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyFeatureAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyFeatureAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyFeatureAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product,
      };
}

class CreateManyFeatureAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyFeatureAndReturnOutputTypeInclude({this.product});

  final _i1
      .PrismaUnion<bool, _i2.CreateManyFeatureAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {'product': product};
}

class FeatureUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUpdateInput({
    this.name,
    this.description,
    this.type,
    this.trialPeriod,
    this.product,
    this.payments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  final _i2.ProductUpdateOneRequiredWithoutFeaturesNestedInput? product;

  final _i2.PaymentUpdateManyWithoutFeaturesNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'type': type,
        'trial_period': trialPeriod,
        'product': product,
        'payments': payments,
      };
}

class FeatureUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.payments,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  final _i2.PaymentUncheckedUpdateManyWithoutFeaturesNestedInput? payments;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        'payments': payments,
      };
}

class FeatureUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.EnumFeatureTypeFieldUpdateOperationsInput>? type;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureCountAggregateOutputType {
  const FeatureCountAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.$all,
  });

  factory FeatureCountAggregateOutputType.fromJson(Map json) =>
      FeatureCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'],
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? description;

  final int? type;

  final int? productId;

  final int? trialPeriod;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        '_all': $all,
      };
}

class FeatureAvgAggregateOutputType {
  const FeatureAvgAggregateOutputType({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  factory FeatureAvgAggregateOutputType.fromJson(Map json) =>
      FeatureAvgAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
      );

  final double? id;

  final double? productId;

  final double? trialPeriod;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureSumAggregateOutputType {
  const FeatureSumAggregateOutputType({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  factory FeatureSumAggregateOutputType.fromJson(Map json) =>
      FeatureSumAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
      );

  final int? id;

  final int? productId;

  final int? trialPeriod;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureMinAggregateOutputType {
  const FeatureMinAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  factory FeatureMinAggregateOutputType.fromJson(Map json) =>
      FeatureMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'] != null
            ? _i3.FeatureType.values.firstWhere((e) => e.name == json['type'])
            : null,
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
      );

  final int? id;

  final String? name;

  final String? description;

  final _i3.FeatureType? type;

  final int? productId;

  final int? trialPeriod;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type?.name,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureMaxAggregateOutputType {
  const FeatureMaxAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  factory FeatureMaxAggregateOutputType.fromJson(Map json) =>
      FeatureMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'] != null
            ? _i3.FeatureType.values.firstWhere((e) => e.name == json['type'])
            : null,
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
      );

  final int? id;

  final String? name;

  final String? description;

  final _i3.FeatureType? type;

  final int? productId;

  final int? trialPeriod;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type?.name,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureGroupByOutputType {
  const FeatureGroupByOutputType({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FeatureGroupByOutputType.fromJson(Map json) =>
      FeatureGroupByOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'] != null
            ? _i3.FeatureType.values.firstWhere((e) => e.name == json['type'])
            : null,
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
        $count: json['_count'] is Map
            ? _i2.FeatureCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.FeatureAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.FeatureSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FeatureMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FeatureMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final String? description;

  final _i3.FeatureType? type;

  final int? productId;

  final int? trialPeriod;

  final _i2.FeatureCountAggregateOutputType? $count;

  final _i2.FeatureAvgAggregateOutputType? $avg;

  final _i2.FeatureSumAggregateOutputType? $sum;

  final _i2.FeatureMinAggregateOutputType? $min;

  final _i2.FeatureMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type?.name,
        'product_id': productId,
        'trial_period': trialPeriod,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class FeatureCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCountOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? type;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureAvgOrderByAggregateInput({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? type;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureMinOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? type;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureSumOrderByAggregateInput({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureOrderByWithAggregationInput({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? type;

  final _i2.SortOrder? productId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? trialPeriod;

  final _i2.FeatureCountOrderByAggregateInput? $count;

  final _i2.FeatureAvgOrderByAggregateInput? $avg;

  final _i2.FeatureMaxOrderByAggregateInput? $max;

  final _i2.FeatureMinOrderByAggregateInput? $min;

  final _i2.FeatureSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedEnumFeatureTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumFeatureTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.FeatureType, _i1.Reference<_i3.FeatureType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? notIn;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.NestedEnumFeatureTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumFeatureTypeFilter? $min;

  final _i2.NestedEnumFeatureTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumFeatureTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumFeatureTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.FeatureType, _i1.Reference<_i3.FeatureType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.FeatureType>,
      _i1.Reference<Iterable<_i3.FeatureType>>>? notIn;

  final _i1.PrismaUnion<_i3.FeatureType,
      _i2.NestedEnumFeatureTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumFeatureTypeFilter? $min;

  final _i2.NestedEnumFeatureTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class FeatureScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final _i1.PrismaUnion<_i2.FeatureScalarWhereWithAggregatesInput,
      Iterable<_i2.FeatureScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.FeatureScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.FeatureScalarWhereWithAggregatesInput,
      Iterable<_i2.FeatureScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1
      .PrismaUnion<_i2.EnumFeatureTypeWithAggregatesFilter, _i3.FeatureType>?
      type;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? productId;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        '_all': $all,
      };
}

class FeatureGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeCountArgs({this.select});

  final _i2.FeatureCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureAvgAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  final bool? id;

  final bool? productId;

  final bool? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeAvgArgs({this.select});

  final _i2.FeatureAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureSumAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.trialPeriod,
  });

  final bool? id;

  final bool? productId;

  final bool? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeSumArgs({this.select});

  final _i2.FeatureSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeMinArgs({this.select});

  final _i2.FeatureMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
      };
}

class FeatureGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeMaxArgs({this.select});

  final _i2.FeatureMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FeatureGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FeatureGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? type;

  final bool? productId;

  final bool? trialPeriod;

  final _i1.PrismaUnion<bool, _i2.FeatureGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.FeatureGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.FeatureGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.FeatureGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.FeatureGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'product_id': productId,
        'trial_period': trialPeriod,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateFeature {
  const AggregateFeature({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateFeature.fromJson(Map json) => AggregateFeature(
        $count: json['_count'] is Map
            ? _i2.FeatureCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.FeatureAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.FeatureSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FeatureMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FeatureMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.FeatureCountAggregateOutputType? $count;

  final _i2.FeatureAvgAggregateOutputType? $avg;

  final _i2.FeatureSumAggregateOutputType? $sum;

  final _i2.FeatureMinAggregateOutputType? $min;

  final _i2.FeatureMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateFeatureCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureCountArgs({this.select});

  final _i2.FeatureCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFeatureAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureAvgArgs({this.select});

  final _i2.FeatureAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFeatureSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureSumArgs({this.select});

  final _i2.FeatureSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFeatureMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureMinArgs({this.select});

  final _i2.FeatureMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFeatureMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureMaxArgs({this.select});

  final _i2.FeatureMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFeatureSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFeatureSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateFeatureCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateFeatureAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateFeatureSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateFeatureMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateFeatureMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PaymentCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateInput({
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    required this.license,
    this.features,
  });

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  final _i2.LicenseCreateNestedOneWithoutPaymentsInput license;

  final _i2.FeatureCreateNestedManyWithoutPaymentsInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
      };
}

class PaymentUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedCreateInput({
    this.id,
    required this.licenseKey,
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final int? id;

  final String licenseKey;

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  final _i2.FeatureUncheckedCreateNestedManyWithoutPaymentsInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCreateManyInput({
    this.id,
    required this.licenseKey,
    this.activationDate,
    required this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final int? id;

  final String licenseKey;

  final DateTime? activationDate;

  final DateTime expirationDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? paymentReference;

  final bool? revoked;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class CreateManyPaymentAndReturnOutputTypeLicenseArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPaymentAndReturnOutputTypeLicenseArgs({
    this.select,
    this.include,
  });

  final _i2.LicenseSelect? select;

  final _i2.LicenseInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyPaymentAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPaymentAndReturnOutputTypeSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyPaymentAndReturnOutputTypeLicenseArgs>?
      license;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
      };
}

class CreateManyPaymentAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPaymentAndReturnOutputTypeInclude({this.license});

  final _i1
      .PrismaUnion<bool, _i2.CreateManyPaymentAndReturnOutputTypeLicenseArgs>?
      license;

  @override
  Map<String, dynamic> toJson() => {'license': license};
}

class PaymentUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUpdateInput({
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
    this.features,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  final _i2.LicenseUpdateOneRequiredWithoutPaymentsNestedInput? license;

  final _i2.FeatureUpdateManyWithoutPaymentsNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license,
        'features': features,
      };
}

class PaymentUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.features,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  final _i2.FeatureUncheckedUpdateManyWithoutPaymentsNestedInput? features;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'features': features,
      };
}

class PaymentUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentUncheckedUpdateManyInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      licenseKey;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      activationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expirationDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? revoked;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentCountAggregateOutputType {
  const PaymentCountAggregateOutputType({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.$all,
  });

  factory PaymentCountAggregateOutputType.fromJson(Map json) =>
      PaymentCountAggregateOutputType(
        id: json['id'],
        licenseKey: json['license_key'],
        activationDate: json['activation_date'],
        expirationDate: json['expiration_date'],
        paymentReference: json['payment_reference'],
        revoked: json['revoked'],
        revocationReasoning: json['revocation_reasoning'],
        $all: json['_all'],
      );

  final int? id;

  final int? licenseKey;

  final int? activationDate;

  final int? expirationDate;

  final int? paymentReference;

  final int? revoked;

  final int? revocationReasoning;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        '_all': $all,
      };
}

class PaymentAvgAggregateOutputType {
  const PaymentAvgAggregateOutputType({this.id});

  factory PaymentAvgAggregateOutputType.fromJson(Map json) =>
      PaymentAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentSumAggregateOutputType {
  const PaymentSumAggregateOutputType({this.id});

  factory PaymentSumAggregateOutputType.fromJson(Map json) =>
      PaymentSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentMinAggregateOutputType {
  const PaymentMinAggregateOutputType({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  factory PaymentMinAggregateOutputType.fromJson(Map json) =>
      PaymentMinAggregateOutputType(
        id: json['id'],
        licenseKey: json['license_key'],
        activationDate: switch (json['activation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['activation_date']
        },
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        paymentReference: json['payment_reference'],
        revoked: json['revoked'],
        revocationReasoning: json['revocation_reasoning'],
      );

  final int? id;

  final String? licenseKey;

  final DateTime? activationDate;

  final DateTime? expirationDate;

  final String? paymentReference;

  final bool? revoked;

  final String? revocationReasoning;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate?.toIso8601String(),
        'expiration_date': expirationDate?.toIso8601String(),
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentMaxAggregateOutputType {
  const PaymentMaxAggregateOutputType({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  factory PaymentMaxAggregateOutputType.fromJson(Map json) =>
      PaymentMaxAggregateOutputType(
        id: json['id'],
        licenseKey: json['license_key'],
        activationDate: switch (json['activation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['activation_date']
        },
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        paymentReference: json['payment_reference'],
        revoked: json['revoked'],
        revocationReasoning: json['revocation_reasoning'],
      );

  final int? id;

  final String? licenseKey;

  final DateTime? activationDate;

  final DateTime? expirationDate;

  final String? paymentReference;

  final bool? revoked;

  final String? revocationReasoning;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate?.toIso8601String(),
        'expiration_date': expirationDate?.toIso8601String(),
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentGroupByOutputType {
  const PaymentGroupByOutputType({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PaymentGroupByOutputType.fromJson(Map json) =>
      PaymentGroupByOutputType(
        id: json['id'],
        licenseKey: json['license_key'],
        activationDate: switch (json['activation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['activation_date']
        },
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        paymentReference: json['payment_reference'],
        revoked: json['revoked'],
        revocationReasoning: json['revocation_reasoning'],
        $count: json['_count'] is Map
            ? _i2.PaymentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PaymentAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PaymentSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PaymentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PaymentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? licenseKey;

  final DateTime? activationDate;

  final DateTime? expirationDate;

  final String? paymentReference;

  final bool? revoked;

  final String? revocationReasoning;

  final _i2.PaymentCountAggregateOutputType? $count;

  final _i2.PaymentAvgAggregateOutputType? $avg;

  final _i2.PaymentSumAggregateOutputType? $sum;

  final _i2.PaymentMinAggregateOutputType? $min;

  final _i2.PaymentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate?.toIso8601String(),
        'expiration_date': expirationDate?.toIso8601String(),
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PaymentCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCountOrderByAggregateInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? activationDate;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? paymentReference;

  final _i2.SortOrder? revoked;

  final _i2.SortOrder? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentMaxOrderByAggregateInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? activationDate;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? paymentReference;

  final _i2.SortOrder? revoked;

  final _i2.SortOrder? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentMinOrderByAggregateInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? activationDate;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? paymentReference;

  final _i2.SortOrder? revoked;

  final _i2.SortOrder? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentOrderByWithAggregationInput({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? licenseKey;

  final _i2.SortOrder? activationDate;

  final _i2.SortOrder? expirationDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? paymentReference;

  final _i2.SortOrder? revoked;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? revocationReasoning;

  final _i2.PaymentCountOrderByAggregateInput? $count;

  final _i2.PaymentAvgOrderByAggregateInput? $avg;

  final _i2.PaymentMaxOrderByAggregateInput? $max;

  final _i2.PaymentMinOrderByAggregateInput? $min;

  final _i2.PaymentSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PaymentScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final _i1.PrismaUnion<_i2.PaymentScalarWhereWithAggregatesInput,
      Iterable<_i2.PaymentScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PaymentScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PaymentScalarWhereWithAggregatesInput,
      Iterable<_i2.PaymentScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? licenseKey;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>?
      activationDate;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>?
      expirationDate;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? paymentReference;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? revoked;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentCountAggregateOutputTypeSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.$all,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        '_all': $all,
      };
}

class PaymentGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeCountArgs({this.select});

  final _i2.PaymentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeAvgArgs({this.select});

  final _i2.PaymentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PaymentGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeSumArgs({this.select});

  final _i2.PaymentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentMinAggregateOutputTypeSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeMinArgs({this.select});

  final _i2.PaymentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentMaxAggregateOutputTypeSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
      };
}

class PaymentGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeMaxArgs({this.select});

  final _i2.PaymentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PaymentGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PaymentGroupByOutputTypeSelect({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? licenseKey;

  final bool? activationDate;

  final bool? expirationDate;

  final bool? paymentReference;

  final bool? revoked;

  final bool? revocationReasoning;

  final _i1.PrismaUnion<bool, _i2.PaymentGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PaymentGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PaymentGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PaymentGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PaymentGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate,
        'expiration_date': expirationDate,
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePayment {
  const AggregatePayment({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePayment.fromJson(Map json) => AggregatePayment(
        $count: json['_count'] is Map
            ? _i2.PaymentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PaymentAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PaymentSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PaymentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PaymentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PaymentCountAggregateOutputType? $count;

  final _i2.PaymentAvgAggregateOutputType? $avg;

  final _i2.PaymentSumAggregateOutputType? $sum;

  final _i2.PaymentMinAggregateOutputType? $min;

  final _i2.PaymentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePaymentCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentCountArgs({this.select});

  final _i2.PaymentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePaymentAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentAvgArgs({this.select});

  final _i2.PaymentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePaymentSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentSumArgs({this.select});

  final _i2.PaymentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePaymentMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentMinArgs({this.select});

  final _i2.PaymentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePaymentMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentMaxArgs({this.select});

  final _i2.PaymentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePaymentSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePaymentSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePaymentCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePaymentAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePaymentSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePaymentMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePaymentMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
