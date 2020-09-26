import 'package:flutter/material.dart';
import 'package:lunch_recipe/domain/core/failure.dart';

class ErrorSnackbar extends StatefulWidget {
  final Failure failure;

  ErrorSnackbar(this.failure);

  @override
  _ErrorSnackbarState createState() => _ErrorSnackbarState();
}

class _ErrorSnackbarState extends State<ErrorSnackbar> {
  @override
  void initState() {
    super.initState();
    final errorMessage = getErrorMessage(widget.failure);
    WidgetsBinding.instance.addPostFrameCallback((_) => showSnackbar(context, errorMessage));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  String getErrorMessage(Failure failure) {
    return failure.when(
      networkFailure: (_) => "Couldn't connect to internet",
      serverFailure: (_) => "Oops! Something went wrong",
    );
  }

  void showSnackbar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }
}
