import 'package:flutter/material.dart';

class CustomMaterialPageRoute extends MaterialPageRoute {
  @override
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }

  CustomMaterialPageRoute({
    required super.builder,
    required RouteSettings super.settings,
    super.maintainState,
    super.fullscreenDialog,
  });
}
