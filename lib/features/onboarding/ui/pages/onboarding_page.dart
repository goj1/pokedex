import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/features/onboarding/ui/controllers/onboarding_controller.dart';
import 'package:pokedex/infra/factories/navigation/custom_navigator.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/ui/app/custom_scaffold.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/buttons/button_default.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';
import 'package:typewritertext/typewritertext.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final OnboardingController onboardingController = getIt<OnboardingController>();
  final CoreController _coreController = getIt<CoreController>();
  bool subtitleVisibility = false;
  bool buttonVisibility = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: false,
      backgroundImage: 'assets/images/onboarding_background.png',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: TypeWriter.text(
                AppLocalizations.of(context)!.pageOnboardingSlideTitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
                duration: const Duration(milliseconds: 50),
                onFinished: (value) {
                  setState(() {
                    subtitleVisibility = true;
                  });
                },
              ),
            ),
          ),
          // const SizedBox(height: 16.0),
          Visibility(
            visible: subtitleVisibility,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: TypeWriter.text(
                AppLocalizations.of(context)!.pageOnboardingSlideText,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: DSFontSize.body,
                  letterSpacing: 1.0,
                  height: 1.3,
                ),
                textAlign: TextAlign.justify,
                duration: const Duration(milliseconds: 50),
                onFinished: (value) {
                  setState(() {
                    buttonVisibility = true;
                  });
                },
              ),
            ),
          ),
          Visibility(
            visible: buttonVisibility,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonDefault(
                      label: Text(
                        AppLocalizations.of(context)!.pageOnboardingStartButton,
                        style: TextStyle(
                          fontSize: DSFontSize.body,
                        ),
                      ),
                      disabled: false,
                      rounded: false,
                      onTap: () {
                        _coreController.saveAppInfo(value: true);
                        CustomNavigator.goToWithClearStack(context, Pages.home);
                      },
                    ),
                  ),
                ],
              ).animate().fade(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 300),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
