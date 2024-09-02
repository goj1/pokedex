import 'dart:io';

import 'package:flutter/services.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';

abstract class CustomSystemUIOverlay {
  static SystemUiOverlayStyle getCustomSystemUIOverlay() {
    return SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Platform.isIOS ? Brightness.dark : Brightness.dark,
      statusBarBrightness: Platform.isIOS ? Brightness.light : Brightness.dark,
      systemNavigationBarIconBrightness: Platform.isIOS ? Brightness.dark : Brightness.dark,
    );
  }
}