import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';
import 'package:pokedex/shared/ui/app/custom_system_ui_overlay.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String namePage;
  final List<Widget>? icons;
  final Color? colorIcon;
  final BuildContext? sContext;
  final Widget? logo;

  const CustomAppBar({
    super.key,
    required this.namePage,
    this.icons,
    this.sContext,
    this.colorIcon,
    this.logo,
    required iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: AppBar(
        leadingWidth: ModalRoute.of(context)?.settings.name == Pages.home
            ? 8.0
            : Platform.isAndroid
                ? 44.0
                : 60.0,
        titleSpacing: ModalRoute.of(context)?.settings.name == Pages.home
            ? 0.0
            : Platform.isAndroid
                ? 8.0
                : 0.0,
        title: SizedBox(
          height: 36.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: logo != null,
                child: logo ?? const Text(''),
              ),
              Visibility(
                visible: logo != null,
                child: const SizedBox(width: 8.0),
              ),
              Text(
                namePage,
                style: TextStyle(
                  color: AppColors.primary,
                  letterSpacing: 1.2,
                  fontSize: DSFontSize.medium,
                ),
              ),
            ],
          ),
        ),
        systemOverlayStyle: CustomSystemUIOverlay.getCustomSystemUIOverlay(),
        elevation: 0,
        actions: icons ?? [const Text('')],
        actionsIconTheme: const IconThemeData(size: 36),
      ),
    );
  }

  // RightIcon buildRightIcon(BuildContext context) => RightIcon(icon: icon, colorIcon: colorIcon, sContext: context);

  @override
  Size get preferredSize => Size.fromHeight(Platform.isAndroid ? 40 : 59.0);
}
