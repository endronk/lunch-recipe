import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_service.dart';

void main() {
  group('LunchRecipeService', () {
    test(
      'should return a service with the right base url',
      () async {
        final tBaseUrl =
            'https://lb7u7svcm5.execute-api.ap-southeast-1.amazonaws.com/dev';

        final service = LunchRecipeService.create();

        expect(service.client.baseUrl, tBaseUrl);
      },
    );
  });
}
