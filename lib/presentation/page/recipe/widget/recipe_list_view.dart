import 'package:flutter/material.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';

class RecipeListView extends StatelessWidget {
  final List<Recipe> recipes;

  RecipeListView(this.recipes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (_, index) {
          final recipe = recipes[index];
          final ingredients = recipe.ingredients.join(", ");
          return Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/img_salad.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Text(
                      recipe.title,
                      key: Key('recipe title'),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                    child: Text(
                      ingredients,
                      key: Key('ingredients'),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
