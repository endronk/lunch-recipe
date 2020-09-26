import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {
  final String message;

  EmptyDataWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
