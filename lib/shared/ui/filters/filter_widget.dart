import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

class FilterWidget extends StatelessWidget {
  final String name;
  final bool selected;
  final Function() onTap;

  const FilterWidget({
    required this.name,
    required this.selected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: 16.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 2.0,
        ),
        margin: const EdgeInsets.only(right: 4.0, bottom: 2.0),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary.withOpacity(.4) : AppColors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 1.0,
            color: AppColors.primary,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: DSFontSize.body,
              color: AppColors.white.withOpacity(.9),
            ),
          ),
        ),
      ),
    );
  }
}
