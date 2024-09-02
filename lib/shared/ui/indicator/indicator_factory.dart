import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';

class IndicatorFactory {
  static Widget getWidget(CoreEnum size, Color color) {
    return Platform.isIOS ? getIosIndicator(size, color) : getAndroidIndicator(color);
  }

  static Widget getIosIndicator(CoreEnum size, Color color) {
    return Transform.scale(
      scale: size == CoreEnum.big ? 1.5 : 1.0,
      child: CupertinoActivityIndicator(
        color: color,
      ),
    );
  }

  static Widget getAndroidIndicator(Color color) {
    return CircularProgressIndicator(color: color, strokeWidth: 2.0,);
  }
}
