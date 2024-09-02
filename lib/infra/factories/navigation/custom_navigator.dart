import 'package:flutter/material.dart';

abstract class  CustomNavigator {
  static Future<dynamic> goTo(BuildContext context, String namePage, {Object? arguments}) async {
    return await Navigator.pushNamed(context, namePage, arguments: arguments);
  }

  static Future<dynamic> goToWithClearStack(BuildContext context, String namePage) async {
    return await Navigator.pushNamedAndRemoveUntil(context, namePage, (r) => false);
  }

  static void goBack(BuildContext context) {
    return Navigator.pop(context);
  }

  static void goBackUntil(BuildContext context, String namePage) {
    return Navigator.popUntil(context, ModalRoute.withName(namePage));
  }
}
