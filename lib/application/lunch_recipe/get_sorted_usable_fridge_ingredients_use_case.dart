import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lunch_recipe/application/core/use_case.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';

part 'get_sorted_usable_fridge_ingredients_use_case.freezed.dart';

@injectable
class GetSortedUsableFridgeIngredientsUseCase implements UseCase<List<FridgeIngredient>, GetSortedUsableFridgeIngredientsParams> {
  final LunchRecipeRepository repository;

  GetSortedUsableFridgeIngredientsUseCase(this.repository);

  @override
  Future<Either<Failure, List<FridgeIngredient>>> call(GetSortedUsableFridgeIngredientsParams params) async {
    final result = await repository.getFridgeIngredients();
    if (result.isLeft()) {
      return result; // return failure
    }

    final emptyList = <FridgeIngredient>[];
    final fridgeIngredients = result.getOrElse(() => emptyList);
    final usableFridgeIngredients = fridgeIngredients
        .where((e) => e.isUsableOnDate(params.useDate))
        .toList();
    usableFridgeIngredients.sort((a, b) => a.title.compareTo(b.title));
    return Right(usableFridgeIngredients);
  }
}

@freezed
abstract class GetSortedUsableFridgeIngredientsParams with _$GetSortedUsableFridgeIngredientsParams {
  const factory GetSortedUsableFridgeIngredientsParams({DateTime useDate}) = _GetSortedUsableFridgeIngredientsParams;
}
