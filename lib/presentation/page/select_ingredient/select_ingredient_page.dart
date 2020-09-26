import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/presentation/core/widget/error_snackbar.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/fridge_ingredient_page.dart';
import 'package:lunch_recipe/presentation/core/widget/loading_widget.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

class SelectIngredientPage extends StatefulWidget {
  @override
  _SelectIngredientPageState createState() => _SelectIngredientPageState();
}

class _SelectIngredientPageState extends State<SelectIngredientPage> {
  LunchRecipeStore store;

  @override
  void initState() {
    super.initState();
    store = Provider.of<LunchRecipeStore>(context, listen: false);
    store.getSortedUsableFridgeIngredients(store.selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Select Ingredients'),
      ),
      body: Observer(
        builder: (_) {
          return store.usableIngredients.when(
            loading: () => LoadingWidget(),
            success: (usableIngredients) => FridgeIngredientPage(usableIngredients),
            error: (failure) => ErrorSnackbar(failure),
          );
        },
      ),
    );
  }
}
