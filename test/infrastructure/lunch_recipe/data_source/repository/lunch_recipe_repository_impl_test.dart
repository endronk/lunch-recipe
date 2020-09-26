import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:mockito/mockito.dart';
import 'package:lunch_recipe/domain/core/exceptions.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/infrastructure/core/network_info.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_remote_data_source.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/repository/lunch_recipe_repository_impl.dart';

class MockLunchRecipeRemoteDataSource extends Mock
    implements LunchRecipeRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockLunchRecipeRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  LunchRecipeRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockLunchRecipeRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = LunchRecipeRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('getFridgeIngredients', () {
    final tFridgeIngredients = [
      FridgeIngredient(
          title: 'Butter', useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
      FridgeIngredient(
          title: 'Eggs', useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
    ];

    test('should check if the device is online', () {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      repository.getFridgeIngredients();

      verify(mockNetworkInfo.isConnected);
    });

    test(
        'should return remote data when the call to remote data source is successful',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getFridgeIngredients())
          .thenAnswer((_) async => tFridgeIngredients);

      final result = await repository.getFridgeIngredients();

      verify(mockRemoteDataSource.getFridgeIngredients());
      expect(result, Right(tFridgeIngredients));
    });

    test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getFridgeIngredients())
          .thenThrow(ServerException());

      final result = await repository.getFridgeIngredients();

      verify(mockRemoteDataSource.getFridgeIngredients());
      expect(result, Left(ServerFailure()));
    });

    test('should return network failure when there is no internet connection',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      final result = await repository.getFridgeIngredients();

      verify(mockNetworkInfo.isConnected);
      expect(result, Left(NetworkFailure()));
    });
  });

  group('getRecipes', () {
    final tIngredients = ['Eggs', 'Butter'];
    final tRecipes = [
      Recipe(title: 'Salad', ingredients: ['Lettuce', 'Tomato']),
      Recipe(title: 'Hotdog', ingredients: ['Hotdog Bun', 'Sausage']),
    ];

    test('should check if the device is online', () {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      repository.getRecipes(tIngredients);

      verify(mockNetworkInfo.isConnected);
    });

    test(
        'should return remote data when the call to remote data source is successful',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getRecipes(any)).thenAnswer((_) async => tRecipes);

      final result = await repository.getRecipes(tIngredients);

      verify(mockRemoteDataSource.getRecipes(tIngredients));
      expect(result, Right(tRecipes));
    });

    test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getRecipes(any)).thenThrow(ServerException());

      final result = await repository.getRecipes(tIngredients);

      verify(mockRemoteDataSource.getRecipes(tIngredients));
      expect(result, Left(ServerFailure()));
    });

    test('should return network failure when there is no internet connection',
        () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      final result = await repository.getRecipes(tIngredients);

      verify(mockNetworkInfo.isConnected);
      expect(result, Left(NetworkFailure()));
    });
  });
}
