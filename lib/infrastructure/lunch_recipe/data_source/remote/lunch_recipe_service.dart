import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:lunch_recipe/infrastructure/core/json_to_type_converter.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/fridge_ingredient_dto.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/recipe_dto.dart';

part 'lunch_recipe_service.chopper.dart';

@injectable
@ChopperApi()
abstract class LunchRecipeService extends ChopperService {
  @factoryMethod
  static LunchRecipeService create() {
    final client = ChopperClient(
      baseUrl: 'https://lb7u7svcm5.execute-api.ap-southeast-1.amazonaws.com/dev',
      services: [_$LunchRecipeService()],
      interceptors: [HttpLoggingInterceptor()],
      converter: JsonToTypeConverter({
        FridgeIngredientDto: (jsonData) => FridgeIngredientDto.fromJson(jsonData),
        RecipeDto: (jsonData) => RecipeDto.fromJson(jsonData),
      })
    );

    return _$LunchRecipeService(client);
  }

  @Get(path: '/ingredients')
  Future<Response<List<FridgeIngredientDto>>> getFridgeIngredients();

  @Get(path: '/recipes')
  Future<Response<List<RecipeDto>>> getRecipes(@Query('ingredients') List<String> ingredients);
}
