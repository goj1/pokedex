import 'package:flutter/material.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';

class TagDefault extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const TagDefault({
    required this.text,
    required this.selected,
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
          horizontal: 16.0,
          vertical: 6.0,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(
                text,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20.0
                ),
              ),
            ),
            selected
                ? Icon(
                    Icons.check,
                    color: AppColors.primary,
                    size: 16.0,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
