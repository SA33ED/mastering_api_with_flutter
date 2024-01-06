import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({
  required BuildContext context,
  required String messege,
  required ToastStates state,
}) {
  Fluttertoast.showToast(
    msg: messege,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: getState(context, state),
    textColor: Colors.white,
    fontSize: 16,
  );
}

enum ToastStates {
  error,
  success,
  warning,
}

Color getState(BuildContext context, ToastStates state) {
  switch (state) {
    case ToastStates.error:
      return Colors.red;
    case ToastStates.success:
      return Colors.green;
    case ToastStates.warning:
      return Colors.yellow;
  }
}
