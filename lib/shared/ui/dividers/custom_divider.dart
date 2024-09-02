import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;

  const CustomDivider({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: color ?? AppColors.white,
    );
  }
}
