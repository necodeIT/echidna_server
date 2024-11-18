import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:test/test.dart';

import 'defaults.dart';

const authHeader = {
  'Authorization': 'Bearer unit-tests',
};

final now = DateTime.now().toUtc().copyWith(
      microsecond: 0,
    );

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(debugLogHandler);

  setUpAll(start);

  setUp(() async {
    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer',
          email: 'test@customer.com',
        ),
      ),
    );

    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer 2',
          email: 'test2@customer.com',
        ),
      ),
    );

    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer 3',
          email: 'test3@customer.com',
        ),
      ),
    );

    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product',
          description: PrismaUnion.$1('Test Description'),
        ),
      ),
    );
    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product 2',
          description: PrismaUnion.$1('Test Description 2'),
        ),
      ),
    );
    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product 3',
          description: PrismaUnion.$1('Test Description 3'),
        ),
      ),
    );

    await prisma.license.create(
      data: const PrismaUnion.$1(
        LicenseCreateInput(
          licenseKey: '1',
          userId: PrismaUnion.$1('5'),
          customer: CustomerCreateNestedOneWithoutLicensesInput(
            connect: CustomerWhereUniqueInput(id: 1),
          ),
          product: ProductCreateNestedOneWithoutLicenseInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );
    await prisma.license.create(
      data: const PrismaUnion.$1(
        LicenseCreateInput(
          licenseKey: '2',
          userId: PrismaUnion.$1('256'),
          customer: CustomerCreateNestedOneWithoutLicensesInput(
            connect: CustomerWhereUniqueInput(id: 1),
          ),
          product: ProductCreateNestedOneWithoutLicenseInput(
            connect: ProductWhereUniqueInput(id: 2),
          ),
        ),
      ),
    );

    await prisma.feature.create(
      data: const PrismaUnion.$1(
        FeatureCreateInput(
          name: 'Test Feature',
          description: 'Test Description',
          type: FeatureType.paid,
          trialPeriod: PrismaUnion.$1(30),
          product: ProductCreateNestedOneWithoutFeaturesInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );
    await prisma.feature.create(
      data: const PrismaUnion.$1(
        FeatureCreateInput(
          name: 'Test Feature 2',
          description: 'Test Description 2',
          type: FeatureType.free,
          product: ProductCreateNestedOneWithoutFeaturesInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );

    await prisma.payment.create(
      data: PrismaUnion.$2(
        PaymentUncheckedCreateInput(
          licenseKey: '1',
          features: const FeatureUncheckedCreateNestedManyWithoutPaymentsInput(
            connect: PrismaUnion.$1(
              FeatureWhereUniqueInput(id: 1),
            ),
          ),
          expirationDate: now.add(const Duration(days: 30)),
          activationDate: now,
        ),
      ),
    );
  });

  tearDown(purgeDatabase);
  tearDownAll(close);

  group('Admin Module', () {
    test('Reject unauthorized requests', () async {
      final response = await get('/admin/licenses/');

      expect(response.statusCode, 403);
      await expectJson(response, {'error': '/admin/licenses/'});
    });

    group('Licenses', () {
      test('Get non-existent license', () async {
        final response = await get(
          '/admin/licenses/3',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Get all licenses', () async {
        final response = await get(
          '/admin/licenses/',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, [
          {
            'customer_id': 1,
            'license_key': '1',
            'product_id': 1,
            'user_id': '5',
          },
          {
            'customer_id': 1,
            'license_key': '2',
            'product_id': 2,
            'user_id': '256',
          },
        ]);
      });

      test('Get single license', () async {
        final response = await get(
          '/admin/licenses/1',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, {
          'customer_id': 1,
          'license_key': '1',
          'product_id': 1,
          'user_id': '5',
        });
      });

      test('Revoke license', () async {
        final response = await post(
          '/admin/licenses/revoke/1',
          headers: authHeader,
          body: {
            'reason': 'Test Reason',
          },
        );

        expect(response.statusCode, 200);
        await expectContent(response, '');
      });

      test('Revoke non-existent license', () async {
        final response = await post(
          '/admin/licenses/revoke/3',
          headers: authHeader,
          body: {
            'reason': 'Test Reason',
          },
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Update license', () async {
        final response = await patch(
          '/admin/licenses/1',
          headers: authHeader,
          body: {
            'product_id': 2,
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'license_key': '28dae7c8bde2f3ca608f86d0e16a214dee74c74bee011cdfdd46bc04b655bc14',
            'customer_id': 1,
            'product_id': 1,
            'user_id': '5',
          },
        );
      });

      test('Update non-existent license', () async {
        final response = await patch(
          '/admin/licenses/3',
          headers: authHeader,
          body: {
            'poduct_id': 2,
          },
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Get license history', () async {
        final response = await get('/admin/licenses/history/1', headers: authHeader);

        expect(response.statusCode, 200);
        await expectJson(
          response,
          [
            {
              'id': 1,
              'license_key': '1',
              'features': [
                {
                  'id': 1,
                  'name': 'Test Feature',
                  'description': 'Test Description',
                  'type': 'PAID',
                  'product_id': 1,
                  'trial_period': 30,
                },
              ],
              'revoked': false,
              'revocation_reasoning': null,
              'activation_date': now.toIso8601String(),
              'expiration_date': now.add(const Duration(days: 30)).toIso8601String(),
              'payment_reference': null,
            }
          ],
        );
      });

      test('Get license history from license with no payments', () async {
        final response = await get(
          '/admin/licenses/history/2',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, []);
      });

      test('Get license history from non-existent license', () async {
        final response = await get(
          '/admin/licenses/history/3',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
      });
    });

    group('Products', () {
      test('Get all products', () async {
        final response = await get(
          '/admin/products/',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, [
          {
            'description': 'Test Description',
            'id': 1,
            'name': 'Test Product',
          },
          {
            'description': 'Test Description 2',
            'id': 2,
            'name': 'Test Product 2',
          },
          {
            'description': 'Test Description 3',
            'id': 3,
            'name': 'Test Product 3',
          },
        ]);
      });

      test('Get single product', () async {
        final response = await get(
          '/admin/products/1',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, {
          'description': 'Test Description',
          'id': 1,
          'name': 'Test Product',
        });
      });

      test('Get non-existent product', () async {
        final response = await get(
          '/admin/products/4',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Add product', () async {
        final response = await put(
          '/admin/products/',
          headers: authHeader,
          body: {
            'name': 'Test Product 4',
            'description': 'Test Description 4',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description 4',
            'id': 4,
            'name': 'Test Product 4',
          },
        );
      });

      test('Add product without name', () async {
        final response = await put(
          '/admin/products/',
          headers: authHeader,
          body: {
            'description': 'Test Description 3',
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Product name and description are required.');
      });

      test('Add product without description', () async {
        final response = await put(
          '/admin/products/',
          headers: authHeader,
          body: {
            'name': 'Test Product 3',
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Product name and description are required.');
      });

      test('Update product', () async {
        final response = await patch(
          '/admin/products/1',
          headers: authHeader,
          body: {
            'name': 'Test Product 4',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description',
            'id': 1,
            'name': 'Test Product 4',
          },
        );
      });

      test('Update non-existent product', () async {
        final response = await patch(
          '/admin/products/4',
          headers: authHeader,
          body: {
            'name': 'Test Product 4',
          },
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Delete product', () async {
        final response = await delete(
          '/admin/products/3',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
      });

      test('Delete non-existent product', () async {
        final response = await delete(
          '/admin/products/4',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Delete product with assosiacions', () async {
        final response = await delete(
          '/admin/products/1',
          headers: authHeader,
        );

        expect(response.statusCode, 403);
        await expectContent(response, 'Product has licenses associated with it. Cannot delete.');
      });
    });

    group('Customers', () {
      test('Get all customers', () async {
        final response = await get(
          '/admin/customers/',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, [
          {
            'email': 'test@customer.com',
            'id': 1,
            'name': 'Test Customer',
          },
          {
            'email': 'test2@customer.com',
            'id': 2,
            'name': 'Test Customer 2',
          },
          {
            'email': 'test3@customer.com',
            'id': 3,
            'name': 'Test Customer 3',
          }
        ]);
      });

      test('Get single customer', () async {
        final response = await get(
          '/admin/customers/1',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'email': 'test@customer.com',
            'id': 1,
            'name': 'Test Customer',
          },
        );
      });

      test('Get non-existent customer', () async {
        final response = await get(
          '/admin/customers/4',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Add customer', () async {
        final response = await put(
          '/admin/customers/',
          headers: authHeader,
          body: {
            'name': 'Test Customer 4',
            'email': 'test4@customer.com',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'name': 'Test Customer 4',
            'email': 'test4@customer.com',
            'id': 4,
          },
        );
      });

      test('Delete customer', () async {
        final response = await delete(
          '/admin/customers/3',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
      });

      test('Delete customer wiith association', () async {
        final response = await delete(
          '/admin/customers/1',
          headers: authHeader,
        );

        expect(response.statusCode, 403);
        await expectContent(response, 'Customer has licenses associated with it. Cannot delete.');
      });
    });

    group('Features', () {
      test('Get all features', () async {
        final response = await get(
          '/admin/features/',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          [
            {
              'description': 'Test Description',
              'id': 1,
              'name': 'Test Feature',
              'product_id': 1,
              'trial_period': 30,
              'type': 'PAID',
            },
            {
              'description': 'Test Description 2',
              'id': 2,
              'name': 'Test Feature 2',
              'product_id': 1,
              'trial_period': null,
              'type': 'FREE',
            },
          ],
        );
      });

      test('Get single feature', () async {
        final response = await get(
          '/admin/features/1',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description',
            'id': 1,
            'name': 'Test Feature',
            'product_id': 1,
            'trial_period': 30,
            'type': 'PAID',
          },
        );
      });

      test('Get non-existent feature', () async {
        final response = await get(
          '/admin/features/3',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Add feature', () async {
        final response = await put(
          '/admin/features/',
          headers: authHeader,
          body: {
            'name': 'Test Feature 3',
            'description': 'Test Description 3',
            'type': 'FREE',
            'product_id': 1,
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description 3',
            'id': 3,
            'name': 'Test Feature 3',
            'product_id': 1,
            'trial_period': null,
            'type': 'FREE',
          },
        );
      });

      test('Add feature without name', () async {
        final response = await put(
          '/admin/features/',
          headers: authHeader,
          body: {
            'description': 'Test Description 3',
            'type': 'FREE',
            'product_id': 1,
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Type, name, and description are required.');
      });

      test('Add feature without description', () async {
        final response = await put(
          '/admin/features/',
          headers: authHeader,
          body: {
            'name': 'Test Feature 3',
            'type': 'FREE',
            'product_id': 1,
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Type, name, and description are required.');
      });

      test('Add feature without type', () async {
        final response = await put(
          '/admin/features/',
          headers: authHeader,
          body: {
            'name': 'Test Feature 3',
            'description': 'Test Description 3',
            'product_id': 1,
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Type, name, and description are required.');
      });

      test('Add feature without product_id', () async {
        final response = await put(
          '/admin/features/',
          headers: authHeader,
          body: {
            'name': 'Test Feature 3',
            'description': 'Test Description 3',
            'type': 'FREE',
          },
        );

        expect(response.statusCode, 400);
        await expectContent(response, 'Type, name, and description are required.');
      });

      test('Update feature', () async {
        final response = await patch(
          '/admin/features/1',
          headers: authHeader,
          body: {
            'name': 'Test Feature 4',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description',
            'id': 1,
            'name': 'Test Feature 4',
            'product_id': 1,
            'trial_period': 30,
            'type': 'PAID',
          },
        );
      });

      test('Update non-existent feature', () async {
        final response = await patch(
          '/admin/features/3',
          headers: authHeader,
          body: {
            'name': 'Test Feature 4',
          },
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Delete feature', () async {
        final response = await delete(
          '/admin/features/2',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
      });

      test('Delete non-existent feature', () async {
        final response = await delete(
          '/admin/features/3',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });

      test('Delete feature with associations', () async {
        final response = await delete(
          '/admin/features/1',
          headers: authHeader,
        );

        expect(response.statusCode, 403);
        await expectContent(
          response,
          anyOf(
            [
              'Feature has payments associated with it. Cannot delete.',
              'Feature has licenses associated with it. Cannot delete.',
            ],
          ),
        );
      });
    });

    group('Payments', () {
      test('Get all payments', () async {
        final response = await get(
          '/admin/payments/',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, [
          {
            'id': 1,
            'license_key': '1',
            'activation_date': now.toIso8601String(),
            'expiration_date': now.add(const Duration(days: 30)).toIso8601String(),
            'payment_reference': null,
            'features': [],
            'revoked': false,
            'revocation_reasoning': null,
          }
        ]);
      });
      test('Get single payment', () async {
        final response = await get(
          '/admin/payments/1',
          headers: authHeader,
        );

        expect(response.statusCode, 200);
        await expectJson(response, {
          'id': 1,
          'license_key': '1',
          'activation_date': now.toIso8601String(),
          'expiration_date': now.add(const Duration(days: 30)).toIso8601String(),
          'payment_reference': null,
          'features': [
            {
              'id': 1,
              'name': 'Test Feature',
              'description': 'Test Description',
              'type': 'PAID',
              'product_id': 1,
              'trial_period': 30,
            },
          ],
          'revoked': false,
          'revocation_reasoning': null,
        });
      });

      test('Get non-existent payment', () async {
        final response = await get(
          '/admin/payments/2',
          headers: authHeader,
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
      });
    });
  });
}
