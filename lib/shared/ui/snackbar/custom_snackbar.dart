import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

abstract class CustomSnackBar {
  static showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        showCloseIcon: true,
        closeIconColor: AppColors.white,
        backgroundColor: AppColors.black,
        content: Text(
          message,
          style: TextStyle(
            fontSize: DSFontSize.body,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
