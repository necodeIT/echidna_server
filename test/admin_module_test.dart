import 'package:license_server/orm/prisma.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:orm/orm.dart';
import 'package:test/test.dart';

import 'defaults.dart';

const authHeader = {
  'Authorization': 'Bearer unit-tests',
};

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

    await prisma.payment.create(
      data: PrismaUnion.$2(
        PaymentUncheckedCreateInput(
          licenseKey: '1',
          expirationDate: DateTime.now().add(const Duration(days: 30)),
          activationDate: DateTime.now(),
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
          '/admin/products/3',
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
            'name': 'Test Product 3',
            'description': 'Test Description 3',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'description': 'Test Description 3',
            'id': 3,
            'name': 'Test Product 3',
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
          '/admin/products/3',
          headers: authHeader,
          body: {
            'name': 'Test Product 4',
          },
        );

        expect(response.statusCode, 404);
        await expectContent(response, 'Not Found');
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
          '/admin/customers/3',
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
            'name': 'Test Customer 3',
            'email': 'test3@customer.com',
          },
        );

        expect(response.statusCode, 200);
        await expectJson(
          response,
          {
            'name': 'Test Customer 3',
            'email': 'test3@customer.com',
            'id': 3,
          },
        );
      });
    });
  });
}
