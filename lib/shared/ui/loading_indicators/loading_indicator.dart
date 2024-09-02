import 'dart:io';

import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/indicator/indicator_factory.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final CoreEnum size;
  final Color color;
  final Color? backgroundColor;

  const LoadingIndicator({
    required this.size,
    required this.color,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                height: size == CoreEnum.big ? 40.0 : 20.0,
                width: size == CoreEnum.big ? 40.0 : 20.0,
                child: IndicatorFactory.getWidget(size, color),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: size == CoreEnum.big ? 40.0 : 20.0,
                width: size == CoreEnum.big ? 40.0 : 20.0,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: backgroundColor ?? AppColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: IndicatorFactory.getWidget(size, color),
              ),
            ),
          );
  }
}
