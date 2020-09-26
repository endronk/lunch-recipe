import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';

void main() {
  group('Loading', () {
    test('should be a subclass of Resource', () {
      final tLoading = Loading();

      expect(tLoading, isA<Resource>());
    });
  });

  group('Success', () {
    final tSuccess = Success('Any data');

    test('should be a subclass of Resource', () {
      expect(tSuccess, isA<Resource>());
    });

    test('should have a data', () {
      expect(tSuccess,
          isA<Success>().having((e) => e.data, 'data', isA<String>()));
    });
  });

  group('Error', () {
    final tFailure = Error(NetworkFailure());

    test('should be a subclass of Resource', () {
      expect(tFailure, isA<Resource>());
    });

    test('should have a data', () {
      expect(tFailure,
          isA<Error>().having((e) => e.failure, 'failure', isA<Failure>()));
    });
  });
}
