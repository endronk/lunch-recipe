// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunch_recipe_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LunchRecipeService extends LunchRecipeService {
  _$LunchRecipeService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LunchRecipeService;

  @override
  Future<Response<List<FridgeIngredientDto>>> getFridgeIngredients() {
    final $url = '/ingredients';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<FridgeIngredientDto>, FridgeIngredientDto>($request);
  }

  @override
  Future<Response<List<RecipeDto>>> getRecipes(List<String> ingredients) {
    final $url = '/recipes';
    final $params = <String, dynamic>{'ingredients': ingredients};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<RecipeDto>, RecipeDto>($request);
  }
}
