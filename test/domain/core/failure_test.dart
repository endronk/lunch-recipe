import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/core/failure.dart';

void main() {
  group('Failure', () {
    test('should call networkFailure() if the failure is NetworkFailure', () {
      final tNetworkFailure = NetworkFailure('No internet connection');
      tNetworkFailure.when(
        networkFailure: (message) => expect(message, isA<String>()),
        serverFailure: (message) => throw Exception('Should not be called'),
      );
    });

    test('should call serverFailure() if the failure is ServerFailure', () {
      final tServerFailure = ServerFailure('Invalid request');
      tServerFailure.when(
        networkFailure: (message) => throw Exception('Should not be called'),
        serverFailure: (message) => expect(message, isA<String>()),
      );
    });
  });

  group('NetworkFailure', () {
    test('should be a subclass of Failure', () {
      final tNetworkFailure = NetworkFailure();

      expect(tNetworkFailure, isA<Failure>());
    });

    test('should have an optional string message', () {
      final tNetworkFailureWithoutMessage = NetworkFailure();
      final tNetworkFailureWithMessage =
          NetworkFailure('No internet connection');

      expect(tNetworkFailureWithoutMessage,
          isA<NetworkFailure>().having((e) => e.message, 'message', null));
      expect(
          tNetworkFailureWithMessage,
          isA<NetworkFailure>()
              .having((e) => e.message, 'message', isA<String>()));
    });
  });

  group('ServerFailure', () {
    test('should be a subclass of Failure', () {
      final tServerFailure = ServerFailure();

      expect(tServerFailure, isA<Failure>());
    });

    test('should have an optional string message', () {
      final tServerFailureWithoutMessage = ServerFailure();
      final tServerFailureWithMessage = ServerFailure('Invalid request');

      expect(tServerFailureWithoutMessage,
          isA<ServerFailure>().having((e) => e.message, 'message', null));
      expect(
          tServerFailureWithMessage,
          isA<ServerFailure>()
              .having((e) => e.message, 'message', isA<String>()));
    });
  });
}
