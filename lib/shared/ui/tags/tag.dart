import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

class Tag extends StatelessWidget {
  final String text;

  const Tag({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 2.0,
      ),
      margin: const EdgeInsets.only(right: 4.0, bottom: 4.0),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(.4),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: DSFontSize.body,
              color: AppColors.black.withOpacity(.9),
            ),
          ),
        ],
      ),
    );
  }
}
