import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/presentation/page/lunch_date/lunch_date_page.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

import 'injection.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<LunchRecipeStore>(
      create: (_) => getIt<LunchRecipeStore>(),
      child: MaterialApp(
        title: 'Lunch Recipe',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: LunchDatePage(),
      ),
    );
  }
}
