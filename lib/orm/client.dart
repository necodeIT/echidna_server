// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class LicenseDelegate {
  const LicenseDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.License?> findUnique({
    required _i3.LicenseWhereUniqueInput where,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License?>(
      action: 'findUniqueLicense',
      result: result,
      factory: (e) => e != null ? _i2.License.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.License> findUniqueOrThrow({
    required _i3.LicenseWhereUniqueInput where,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License>(
      action: 'findUniqueLicenseOrThrow',
      result: result,
      factory: (e) => _i2.License.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.License?> findFirst({
    _i3.LicenseWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LicenseOrderByWithRelationInput>,
            _i3.LicenseOrderByWithRelationInput>?
        orderBy,
    _i3.LicenseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LicenseScalar, Iterable<_i3.LicenseScalar>>? distinct,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License?>(
      action: 'findFirstLicense',
      result: result,
      factory: (e) => e != null ? _i2.License.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.License> findFirstOrThrow({
    _i3.LicenseWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LicenseOrderByWithRelationInput>,
            _i3.LicenseOrderByWithRelationInput>?
        orderBy,
    _i3.LicenseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LicenseScalar, Iterable<_i3.LicenseScalar>>? distinct,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License>(
      action: 'findFirstLicenseOrThrow',
      result: result,
      factory: (e) => _i2.License.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.License>> findMany({
    _i3.LicenseWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LicenseOrderByWithRelationInput>,
            _i3.LicenseOrderByWithRelationInput>?
        orderBy,
    _i3.LicenseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LicenseScalar, Iterable<_i3.LicenseScalar>>? distinct,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.License>>(
      action: 'findManyLicense',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.License.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.License> create({
    required _i1
        .PrismaUnion<_i3.LicenseCreateInput, _i3.LicenseUncheckedCreateInput>
        data,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License>(
      action: 'createOneLicense',
      result: result,
      factory: (e) => _i2.License.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.LicenseCreateManyInput,
            Iterable<_i3.LicenseCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLicense',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyLicenseAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.LicenseCreateManyInput,
            Iterable<_i3.LicenseCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyLicenseAndReturnOutputTypeSelect? select,
    _i3.CreateManyLicenseAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyLicenseAndReturnOutputType>>(
      action: 'createManyLicenseAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyLicenseAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.License?> update({
    required _i1
        .PrismaUnion<_i3.LicenseUpdateInput, _i3.LicenseUncheckedUpdateInput>
        data,
    required _i3.LicenseWhereUniqueInput where,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License?>(
      action: 'updateOneLicense',
      result: result,
      factory: (e) => e != null ? _i2.License.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.LicenseUpdateManyMutationInput,
            _i3.LicenseUncheckedUpdateManyInput>
        data,
    _i3.LicenseWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLicense',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.License> upsert({
    required _i3.LicenseWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.LicenseCreateInput, _i3.LicenseUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.LicenseUpdateInput, _i3.LicenseUncheckedUpdateInput>
        update,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License>(
      action: 'upsertOneLicense',
      result: result,
      factory: (e) => _i2.License.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.License?> delete({
    required _i3.LicenseWhereUniqueInput where,
    _i3.LicenseSelect? select,
    _i3.LicenseInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.License?>(
      action: 'deleteOneLicense',
      result: result,
      factory: (e) => e != null ? _i2.License.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.LicenseWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLicense',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LicenseGroupByOutputType>> groupBy({
    _i3.LicenseWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LicenseOrderByWithAggregationInput>,
            _i3.LicenseOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.LicenseScalar>, _i3.LicenseScalar> by,
    _i3.LicenseScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LicenseGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LicenseGroupByOutputType>>(
      action: 'groupByLicense',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.LicenseGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateLicense> aggregate({
    _i3.LicenseWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LicenseOrderByWithRelationInput>,
            _i3.LicenseOrderByWithRelationInput>?
        orderBy,
    _i3.LicenseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLicenseSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'License',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLicense>(
      action: 'aggregateLicense',
      result: result,
      factory: (e) => _i3.AggregateLicense.fromJson(e),
    );
  }
}

class ProductDelegate {
  const ProductDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Product?> findUnique({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'findUniqueProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Product> findUniqueOrThrow({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'findUniqueProductOrThrow',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product?> findFirst({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'findFirstProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Product> findFirstOrThrow({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'findFirstProductOrThrow',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Product>> findMany({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Product>>(
      action: 'findManyProduct',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Product.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Product> create({
    required _i1
        .PrismaUnion<_i3.ProductCreateInput, _i3.ProductUncheckedCreateInput>
        data,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'createOneProduct',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ProductCreateManyInput,
            Iterable<_i3.ProductCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyProductAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProductCreateManyInput,
            Iterable<_i3.ProductCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyProductAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyProductAndReturnOutputType>>(
      action: 'createManyProductAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyProductAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Product?> update({
    required _i1
        .PrismaUnion<_i3.ProductUpdateInput, _i3.ProductUncheckedUpdateInput>
        data,
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'updateOneProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProductUpdateManyMutationInput,
            _i3.ProductUncheckedUpdateManyInput>
        data,
    _i3.ProductWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product> upsert({
    required _i3.ProductWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ProductCreateInput, _i3.ProductUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ProductUpdateInput, _i3.ProductUncheckedUpdateInput>
        update,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'upsertOneProduct',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product?> delete({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'deleteOneProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProductWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProductGroupByOutputType>> groupBy({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithAggregationInput>,
            _i3.ProductOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProductScalar>, _i3.ProductScalar> by,
    _i3.ProductScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProductGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProductGroupByOutputType>>(
      action: 'groupByProduct',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProductGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProduct> aggregate({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProductSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProduct>(
      action: 'aggregateProduct',
      result: result,
      factory: (e) => _i3.AggregateProduct.fromJson(e),
    );
  }
}

class CustomerDelegate {
  const CustomerDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Customer?> findUnique({
    required _i3.CustomerWhereUniqueInput where,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer?>(
      action: 'findUniqueCustomer',
      result: result,
      factory: (e) => e != null ? _i2.Customer.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Customer> findUniqueOrThrow({
    required _i3.CustomerWhereUniqueInput where,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer>(
      action: 'findUniqueCustomerOrThrow',
      result: result,
      factory: (e) => _i2.Customer.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Customer?> findFirst({
    _i3.CustomerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CustomerOrderByWithRelationInput>,
            _i3.CustomerOrderByWithRelationInput>?
        orderBy,
    _i3.CustomerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CustomerScalar, Iterable<_i3.CustomerScalar>>? distinct,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer?>(
      action: 'findFirstCustomer',
      result: result,
      factory: (e) => e != null ? _i2.Customer.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Customer> findFirstOrThrow({
    _i3.CustomerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CustomerOrderByWithRelationInput>,
            _i3.CustomerOrderByWithRelationInput>?
        orderBy,
    _i3.CustomerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CustomerScalar, Iterable<_i3.CustomerScalar>>? distinct,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer>(
      action: 'findFirstCustomerOrThrow',
      result: result,
      factory: (e) => _i2.Customer.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Customer>> findMany({
    _i3.CustomerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CustomerOrderByWithRelationInput>,
            _i3.CustomerOrderByWithRelationInput>?
        orderBy,
    _i3.CustomerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CustomerScalar, Iterable<_i3.CustomerScalar>>? distinct,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Customer>>(
      action: 'findManyCustomer',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Customer.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Customer> create({
    required _i1
        .PrismaUnion<_i3.CustomerCreateInput, _i3.CustomerUncheckedCreateInput>
        data,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer>(
      action: 'createOneCustomer',
      result: result,
      factory: (e) => _i2.Customer.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.CustomerCreateManyInput,
            Iterable<_i3.CustomerCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyCustomer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyCustomerAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.CustomerCreateManyInput,
            Iterable<_i3.CustomerCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyCustomerAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyCustomerAndReturnOutputType>>(
      action: 'createManyCustomerAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyCustomerAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Customer?> update({
    required _i1
        .PrismaUnion<_i3.CustomerUpdateInput, _i3.CustomerUncheckedUpdateInput>
        data,
    required _i3.CustomerWhereUniqueInput where,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer?>(
      action: 'updateOneCustomer',
      result: result,
      factory: (e) => e != null ? _i2.Customer.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CustomerUpdateManyMutationInput,
            _i3.CustomerUncheckedUpdateManyInput>
        data,
    _i3.CustomerWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyCustomer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Customer> upsert({
    required _i3.CustomerWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.CustomerCreateInput, _i3.CustomerUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.CustomerUpdateInput, _i3.CustomerUncheckedUpdateInput>
        update,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer>(
      action: 'upsertOneCustomer',
      result: result,
      factory: (e) => _i2.Customer.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Customer?> delete({
    required _i3.CustomerWhereUniqueInput where,
    _i3.CustomerSelect? select,
    _i3.CustomerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Customer?>(
      action: 'deleteOneCustomer',
      result: result,
      factory: (e) => e != null ? _i2.Customer.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.CustomerWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyCustomer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CustomerGroupByOutputType>> groupBy({
    _i3.CustomerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CustomerOrderByWithAggregationInput>,
            _i3.CustomerOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.CustomerScalar>, _i3.CustomerScalar>
        by,
    _i3.CustomerScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CustomerGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CustomerGroupByOutputType>>(
      action: 'groupByCustomer',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CustomerGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateCustomer> aggregate({
    _i3.CustomerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CustomerOrderByWithRelationInput>,
            _i3.CustomerOrderByWithRelationInput>?
        orderBy,
    _i3.CustomerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCustomerSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Customer',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCustomer>(
      action: 'aggregateCustomer',
      result: result,
      factory: (e) => _i3.AggregateCustomer.fromJson(e),
    );
  }
}

class FeatureDelegate {
  const FeatureDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Feature?> findUnique({
    required _i3.FeatureWhereUniqueInput where,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature?>(
      action: 'findUniqueFeature',
      result: result,
      factory: (e) => e != null ? _i2.Feature.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Feature> findUniqueOrThrow({
    required _i3.FeatureWhereUniqueInput where,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature>(
      action: 'findUniqueFeatureOrThrow',
      result: result,
      factory: (e) => _i2.Feature.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feature?> findFirst({
    _i3.FeatureWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FeatureOrderByWithRelationInput>,
            _i3.FeatureOrderByWithRelationInput>?
        orderBy,
    _i3.FeatureWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeatureScalar, Iterable<_i3.FeatureScalar>>? distinct,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature?>(
      action: 'findFirstFeature',
      result: result,
      factory: (e) => e != null ? _i2.Feature.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Feature> findFirstOrThrow({
    _i3.FeatureWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FeatureOrderByWithRelationInput>,
            _i3.FeatureOrderByWithRelationInput>?
        orderBy,
    _i3.FeatureWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeatureScalar, Iterable<_i3.FeatureScalar>>? distinct,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature>(
      action: 'findFirstFeatureOrThrow',
      result: result,
      factory: (e) => _i2.Feature.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Feature>> findMany({
    _i3.FeatureWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FeatureOrderByWithRelationInput>,
            _i3.FeatureOrderByWithRelationInput>?
        orderBy,
    _i3.FeatureWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeatureScalar, Iterable<_i3.FeatureScalar>>? distinct,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Feature>>(
      action: 'findManyFeature',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Feature.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Feature> create({
    required _i1
        .PrismaUnion<_i3.FeatureCreateInput, _i3.FeatureUncheckedCreateInput>
        data,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature>(
      action: 'createOneFeature',
      result: result,
      factory: (e) => _i2.Feature.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.FeatureCreateManyInput,
            Iterable<_i3.FeatureCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyFeature',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyFeatureAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.FeatureCreateManyInput,
            Iterable<_i3.FeatureCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyFeatureAndReturnOutputTypeSelect? select,
    _i3.CreateManyFeatureAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyFeatureAndReturnOutputType>>(
      action: 'createManyFeatureAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyFeatureAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Feature?> update({
    required _i1
        .PrismaUnion<_i3.FeatureUpdateInput, _i3.FeatureUncheckedUpdateInput>
        data,
    required _i3.FeatureWhereUniqueInput where,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature?>(
      action: 'updateOneFeature',
      result: result,
      factory: (e) => e != null ? _i2.Feature.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.FeatureUpdateManyMutationInput,
            _i3.FeatureUncheckedUpdateManyInput>
        data,
    _i3.FeatureWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyFeature',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feature> upsert({
    required _i3.FeatureWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.FeatureCreateInput, _i3.FeatureUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.FeatureUpdateInput, _i3.FeatureUncheckedUpdateInput>
        update,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature>(
      action: 'upsertOneFeature',
      result: result,
      factory: (e) => _i2.Feature.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feature?> delete({
    required _i3.FeatureWhereUniqueInput where,
    _i3.FeatureSelect? select,
    _i3.FeatureInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feature?>(
      action: 'deleteOneFeature',
      result: result,
      factory: (e) => e != null ? _i2.Feature.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.FeatureWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyFeature',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.FeatureGroupByOutputType>> groupBy({
    _i3.FeatureWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FeatureOrderByWithAggregationInput>,
            _i3.FeatureOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.FeatureScalar>, _i3.FeatureScalar> by,
    _i3.FeatureScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.FeatureGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.FeatureGroupByOutputType>>(
      action: 'groupByFeature',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.FeatureGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateFeature> aggregate({
    _i3.FeatureWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FeatureOrderByWithRelationInput>,
            _i3.FeatureOrderByWithRelationInput>?
        orderBy,
    _i3.FeatureWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateFeatureSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feature',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateFeature>(
      action: 'aggregateFeature',
      result: result,
      factory: (e) => _i3.AggregateFeature.fromJson(e),
    );
  }
}

class PaymentDelegate {
  const PaymentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Payment?> findUnique({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'findUniquePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Payment> findUniqueOrThrow({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'findUniquePaymentOrThrow',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment?> findFirst({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PaymentOrderByWithRelationInput>,
            _i3.PaymentOrderByWithRelationInput>?
        orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'findFirstPayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Payment> findFirstOrThrow({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PaymentOrderByWithRelationInput>,
            _i3.PaymentOrderByWithRelationInput>?
        orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'findFirstPaymentOrThrow',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Payment>> findMany({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PaymentOrderByWithRelationInput>,
            _i3.PaymentOrderByWithRelationInput>?
        orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Payment>>(
      action: 'findManyPayment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Payment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Payment> create({
    required _i1
        .PrismaUnion<_i3.PaymentCreateInput, _i3.PaymentUncheckedCreateInput>
        data,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'createOnePayment',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PaymentCreateManyInput,
            Iterable<_i3.PaymentCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyPaymentAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.PaymentCreateManyInput,
            Iterable<_i3.PaymentCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyPaymentAndReturnOutputTypeSelect? select,
    _i3.CreateManyPaymentAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyPaymentAndReturnOutputType>>(
      action: 'createManyPaymentAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyPaymentAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Payment?> update({
    required _i1
        .PrismaUnion<_i3.PaymentUpdateInput, _i3.PaymentUncheckedUpdateInput>
        data,
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'updateOnePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PaymentUpdateManyMutationInput,
            _i3.PaymentUncheckedUpdateManyInput>
        data,
    _i3.PaymentWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment> upsert({
    required _i3.PaymentWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PaymentCreateInput, _i3.PaymentUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PaymentUpdateInput, _i3.PaymentUncheckedUpdateInput>
        update,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'upsertOnePayment',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment?> delete({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'deleteOnePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PaymentWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PaymentGroupByOutputType>> groupBy({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PaymentOrderByWithAggregationInput>,
            _i3.PaymentOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PaymentScalar>, _i3.PaymentScalar> by,
    _i3.PaymentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PaymentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PaymentGroupByOutputType>>(
      action: 'groupByPayment',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PaymentGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePayment> aggregate({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PaymentOrderByWithRelationInput>,
            _i3.PaymentOrderByWithRelationInput>?
        orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePaymentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePayment>(
      action: 'aggregatePayment',
      result: result,
      factory: (e) => _i3.AggregatePayment.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [
      {
        'name': 'FeatureType',
        'values': [
          {
            'name': 'FREE',
            'dbName': null,
          },
          {
            'name': 'PAID',
            'dbName': null,
          },
          {
            'name': 'TRIAL',
            'dbName': null,
          },
        ],
        'dbName': null,
      }
    ],
    'models': [
      {
        'name': 'License',
        'dbName': null,
        'fields': [
          {
            'name': 'license_key',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'customer',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Customer',
            'relationName': 'CustomerToLicense',
            'relationFromFields': ['customer_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'customer_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Product',
            'relationName': 'LicenseToProduct',
            'relationFromFields': ['product_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'payments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Payment',
            'relationName': 'LicenseToPayment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Product',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'License',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'License',
            'relationName': 'LicenseToProduct',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'features',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Feature',
            'relationName': 'FeatureToProduct',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Customer',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'licenses',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'License',
            'relationName': 'CustomerToLicense',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Feature',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'type',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FeatureType',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Product',
            'relationName': 'FeatureToProduct',
            'relationFromFields': ['product_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trial_period',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'payments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Payment',
            'relationName': 'FeatureToPayment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Payment',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'license',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'License',
            'relationName': 'LicenseToPayment',
            'relationFromFields': ['license_key'],
            'relationToFields': ['license_key'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'license_key',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'activation_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expiration_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'payment_reference',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'features',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Feature',
            'relationName': 'FeatureToPayment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'revoked',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'revocation_reasoning',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'License',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'license_key'}
        ],
      },
      {
        'model': 'Product',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Customer',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Feature',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Payment',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  output   = "lib/orm"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel License {\n  license_key String    @id\n  customer    Customer  @relation(fields: [customer_id], references: [id])\n  customer_id Int\n  user_id     String\n  product     Product   @relation(fields: [product_id], references: [id])\n  product_id  Int\n  payments    Payment[]\n}\n\nmodel Product {\n  id          Int       @id @default(autoincrement())\n  name        String\n  description String?\n  License     License[]\n  features    Feature[]\n}\n\nmodel Customer {\n  id       Int       @id @default(autoincrement())\n  name     String\n  email    String\n  licenses License[]\n}\n\nmodel Feature {\n  id           Int         @id @default(autoincrement())\n  name         String\n  description  String?\n  type         FeatureType\n  product      Product     @relation(fields: [product_id], references: [id])\n  product_id   Int\n  trial_period Int?\n  payments     Payment[]\n}\n\nenum FeatureType {\n  FREE\n  PAID\n  TRIAL\n}\n\nmodel Payment {\n  id                   Int       @id @default(autoincrement())\n  license              License   @relation(fields: [license_key], references: [license_key], onDelete: Cascade, onUpdate: Cascade)\n  license_key          String\n  activation_date      DateTime  @default(now())\n  expiration_date      DateTime\n  payment_reference    String?\n  features             Feature[]\n  revoked              Boolean   @default(false)\n  revocation_reasoning String?\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  LicenseDelegate get license => LicenseDelegate._(this);

  ProductDelegate get product => ProductDelegate._(this);

  CustomerDelegate get customer => CustomerDelegate._(this);

  FeatureDelegate get feature => FeatureDelegate._(this);

  PaymentDelegate get payment => PaymentDelegate._(this);
}
