import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/core/exceptions.dart';

void main() {
  group('ServerException', () {
    test('should be a subclass of Exception', () {
      final tServerException = ServerException();

      expect(tServerException, isA<Exception>());
    });
  });
}
