import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/features/home/ui/controllers/home_controller.dart';
import 'package:pokedex/infra/factories/navigation/custom_navigator.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/ui/app/custom_scaffold.dart';
import 'package:pokedex/shared/ui/app/custom_system_ui_overlay.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';

class LoadAppPage extends StatefulWidget {
  const LoadAppPage({super.key});

  @override
  LoadAppPageState createState() => LoadAppPageState();
}

class LoadAppPageState extends State<LoadAppPage> {
  final CoreController _coreController = getIt<CoreController>();
  final HomeController _homeController = getIt<HomeController>();

  Future<void> loadStores() async {
    await _coreController.loadData();
    await _homeController.loadData();
  }

  @override
  void initState() {
    loadStores();

    Future.delayed(const Duration(milliseconds: 2000), () {
      if (_coreController.onboardingShowed) {
        CustomNavigator.goToWithClearStack(
          context,
          Pages.home,
        );
      } else {
        CustomNavigator.goToWithClearStack(
          context,
          Pages.onboarding,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: CustomSystemUIOverlay.getCustomSystemUIOverlay(),
      child: CustomScaffold(
        withAppBar: false,
        namePage: '',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.0,
              child: Image.asset('assets/images/await.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
                top: 16.0,
              ),
              child: Text(
                AppLocalizations.of(context)!.loadingTitle,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            LoadingIndicator(
              size: CoreEnum.big,
              color: AppColors.primary,
              backgroundColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
