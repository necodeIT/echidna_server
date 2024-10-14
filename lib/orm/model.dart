// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i3;

import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Customer {
  const Customer({
    this.id,
    this.name,
    this.email,
    this.licenses,
    this.$count,
  });

  factory Customer.fromJson(Map json) => Customer(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        licenses: (json['licenses'] as Iterable?)
            ?.map((json) => _i1.License.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.CustomerCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final String? email;

  final Iterable<_i1.License>? licenses;

  final _i2.CustomerCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'licenses': licenses?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

enum FeatureType implements _i3.PrismaEnum {
  free._('FREE'),
  paid._('PAID'),
  trial._('TRIAL');

  const FeatureType._(this.name);

  @override
  final String name;
}

class Payment {
  const Payment({
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

  factory Payment.fromJson(Map json) => Payment(
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
        license: json['license'] is Map
            ? _i1.License.fromJson(json['license'])
            : null,
        features: (json['features'] as Iterable?)
            ?.map((json) => _i1.Feature.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.PaymentCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? licenseKey;

  final DateTime? activationDate;

  final DateTime? expirationDate;

  final String? paymentReference;

  final bool? revoked;

  final String? revocationReasoning;

  final _i1.License? license;

  final Iterable<_i1.Feature>? features;

  final _i2.PaymentCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate?.toIso8601String(),
        'expiration_date': expirationDate?.toIso8601String(),
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license?.toJson(),
        'features': features?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Feature {
  const Feature({
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

  factory Feature.fromJson(Map json) => Feature(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'] != null
            ? _i1.FeatureType.values.firstWhere((e) => e.name == json['type'])
            : null,
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
        payments: (json['payments'] as Iterable?)
            ?.map((json) => _i1.Payment.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.FeatureCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final String? description;

  final _i1.FeatureType? type;

  final int? productId;

  final int? trialPeriod;

  final _i1.Product? product;

  final Iterable<_i1.Payment>? payments;

  final _i2.FeatureCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type?.name,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product?.toJson(),
        'payments': payments?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Product {
  const Product({
    this.id,
    this.name,
    this.description,
    this.license,
    this.features,
    this.$count,
  });

  factory Product.fromJson(Map json) => Product(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        license: (json['License'] as Iterable?)
            ?.map((json) => _i1.License.fromJson(json)),
        features: (json['features'] as Iterable?)
            ?.map((json) => _i1.Feature.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.ProductCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final String? description;

  final Iterable<_i1.License>? license;

  final Iterable<_i1.Feature>? features;

  final _i2.ProductCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'License': license?.map((e) => e.toJson()),
        'features': features?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class License {
  const License({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
    this.payments,
    this.$count,
  });

  factory License.fromJson(Map json) => License(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
        customer: json['customer'] is Map
            ? _i1.Customer.fromJson(json['customer'])
            : null,
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
        payments: (json['payments'] as Iterable?)
            ?.map((json) => _i1.Payment.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.LicenseCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? licenseKey;

  final int? customerId;

  final String? userId;

  final int? productId;

  final _i1.Customer? customer;

  final _i1.Product? product;

  final Iterable<_i1.Payment>? payments;

  final _i2.LicenseCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer?.toJson(),
        'product': product?.toJson(),
        'payments': payments?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyLicenseAndReturnOutputType {
  const CreateManyLicenseAndReturnOutputType({
    this.licenseKey,
    this.customerId,
    this.userId,
    this.productId,
    this.customer,
    this.product,
  });

  factory CreateManyLicenseAndReturnOutputType.fromJson(Map json) =>
      CreateManyLicenseAndReturnOutputType(
        licenseKey: json['license_key'],
        customerId: json['customer_id'],
        userId: json['user_id'],
        productId: json['product_id'],
        customer: json['customer'] is Map
            ? _i1.Customer.fromJson(json['customer'])
            : null,
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
      );

  final String? licenseKey;

  final int? customerId;

  final String? userId;

  final int? productId;

  final _i1.Customer? customer;

  final _i1.Product? product;

  Map<String, dynamic> toJson() => {
        'license_key': licenseKey,
        'customer_id': customerId,
        'user_id': userId,
        'product_id': productId,
        'customer': customer?.toJson(),
        'product': product?.toJson(),
      };
}

class CreateManyProductAndReturnOutputType {
  const CreateManyProductAndReturnOutputType({
    this.id,
    this.name,
    this.description,
  });

  factory CreateManyProductAndReturnOutputType.fromJson(Map json) =>
      CreateManyProductAndReturnOutputType(
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

class CreateManyCustomerAndReturnOutputType {
  const CreateManyCustomerAndReturnOutputType({
    this.id,
    this.name,
    this.email,
  });

  factory CreateManyCustomerAndReturnOutputType.fromJson(Map json) =>
      CreateManyCustomerAndReturnOutputType(
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

class CreateManyFeatureAndReturnOutputType {
  const CreateManyFeatureAndReturnOutputType({
    this.id,
    this.name,
    this.description,
    this.type,
    this.productId,
    this.trialPeriod,
    this.product,
  });

  factory CreateManyFeatureAndReturnOutputType.fromJson(Map json) =>
      CreateManyFeatureAndReturnOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        type: json['type'] != null
            ? _i1.FeatureType.values.firstWhere((e) => e.name == json['type'])
            : null,
        productId: json['product_id'],
        trialPeriod: json['trial_period'],
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
      );

  final int? id;

  final String? name;

  final String? description;

  final _i1.FeatureType? type;

  final int? productId;

  final int? trialPeriod;

  final _i1.Product? product;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'type': type?.name,
        'product_id': productId,
        'trial_period': trialPeriod,
        'product': product?.toJson(),
      };
}

class CreateManyPaymentAndReturnOutputType {
  const CreateManyPaymentAndReturnOutputType({
    this.id,
    this.licenseKey,
    this.activationDate,
    this.expirationDate,
    this.paymentReference,
    this.revoked,
    this.revocationReasoning,
    this.license,
  });

  factory CreateManyPaymentAndReturnOutputType.fromJson(Map json) =>
      CreateManyPaymentAndReturnOutputType(
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
        license: json['license'] is Map
            ? _i1.License.fromJson(json['license'])
            : null,
      );

  final int? id;

  final String? licenseKey;

  final DateTime? activationDate;

  final DateTime? expirationDate;

  final String? paymentReference;

  final bool? revoked;

  final String? revocationReasoning;

  final _i1.License? license;

  Map<String, dynamic> toJson() => {
        'id': id,
        'license_key': licenseKey,
        'activation_date': activationDate?.toIso8601String(),
        'expiration_date': expirationDate?.toIso8601String(),
        'payment_reference': paymentReference,
        'revoked': revoked,
        'revocation_reasoning': revocationReasoning,
        'license': license?.toJson(),
      };
}
