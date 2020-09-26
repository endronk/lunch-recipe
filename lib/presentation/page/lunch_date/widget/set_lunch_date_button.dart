import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/select_ingredient_page.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

class SetLunchDateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<LunchRecipeStore>(context);
    return Container(
      margin: EdgeInsets.all(16),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        height: 45,
        child: Text('Set lunch date'),
        textColor: Colors.white,
        color: Colors.deepOrange,
        onPressed: () => onSetLunchDateButtonPressed(context, store),
      ),
    );
  }

  void onSetLunchDateButtonPressed(
    BuildContext context,
    LunchRecipeStore store,
  ) async {
    final newSelectedDate = await showCalendar(context, store.selectedDate);
    if (newSelectedDate != null) {
      store.selectedDate = newSelectedDate;
      navigateToFridgeIngredientPage(context);
    }
  }

  Future<DateTime> showCalendar(
    BuildContext context,
    DateTime currentSelectedDate,
  ) async {
    final today = DateTime.now();
    final DateTime newSelectedDate = await showDatePicker(
      context: context,
      initialDate: currentSelectedDate,
      firstDate: today,
      lastDate: DateTime(2025),
    );
    return newSelectedDate;
  }

  void navigateToFridgeIngredientPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SelectIngredientPage(),
      ),
    );
  }
}
