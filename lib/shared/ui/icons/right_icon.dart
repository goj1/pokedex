import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class RightIcon extends StatelessWidget {
  final IconData? icon;
  final Color? colorIcon;
  final BuildContext? sContext;

  const RightIcon({
    super.key,
    required this.icon,
    this.sContext,
    this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () => Scaffold.of(sContext!).openEndDrawer(),
        child: Icon(
          icon,
          color: colorIcon ?? AppColors.secondary,
        ),
      ),
    );
  }
}
