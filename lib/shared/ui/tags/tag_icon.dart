import 'package:flutter/material.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';

class TagIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const TagIcon({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(.18),
          borderRadius: BorderRadius.circular(4.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        margin: const EdgeInsets.only(right: 8.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Icon(
            icon,
            color: AppColors.primary,
            size: 22.0,
          ),
        ),
      ),
    );
  }
}
