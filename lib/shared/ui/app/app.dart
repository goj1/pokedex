import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/infra/factories/navigation/navigation_service.dart';
import 'package:pokedex/infra/factories/navigation/navigator_pages.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/ui/app/theme/custom_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  final CoreController _coreController = getIt<CoreController>();
  final navigatorKey = GlobalKey<NavigatorState>();
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        key: NavigationService.appNavigator,
        theme: CustomTheme.appTheme,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
          Locale('en', 'US'),
        ],
        locale: Locale(_coreController.language),
        debugShowCheckedModeBanner: false,
        routes: NavigatorPages.pagesMap.map((key, value) => MapEntry(key, (context) => value)),
        home: NavigatorPages.getPage(Pages.load),
      );
    });
  }
}