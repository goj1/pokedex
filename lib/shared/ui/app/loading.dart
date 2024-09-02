import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(.3),
      ),
      child: Center(
        child: Container(
          height: 150.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingIndicator(
                size: CoreEnum.big,
                color: AppColors.primary,backgroundColor: null,
              ),
              Text(
                '',
                style: TextStyle(fontSize: 18.0, color: AppColors.secondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
