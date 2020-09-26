import 'package:flutter/material.dart';
import 'package:lunch_recipe/presentation/page/lunch_date/widget/set_lunch_date_button.dart';

class LunchDatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 24, bottom: 64),
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage('assets/images/img_welcome.png'),
              height: 250,
              fit: BoxFit.fitHeight,
            ),
          ),
          Text(
            "Lunch Recipe",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Get your lunch recipes suggestion",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Spacer(),
          SetLunchDateButton(),
        ],
      ),
    );
  }
}
