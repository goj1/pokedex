import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final bool showBorderTop;
  final bool showBorderBottom;

  const TitleSection({
    required this.title,
    required this.showBorderTop,
    required this.showBorderBottom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(4.0),
        border: Border(
          top: BorderSide(color: AppColors.primary, width: showBorderTop ? .5 : 0),
          bottom: BorderSide(color: AppColors.primary, width: showBorderBottom ? .5 : 0),
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
