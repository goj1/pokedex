import 'package:flutter/material.dart';
import 'package:pokedex/features/home/ui/pages/home_page.dart';
import 'package:pokedex/features/load/ui/pages/load_app_page.dart';
import 'package:pokedex/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';

abstract class NavigatorPages {
  static Map<String, Widget> pagesMap = {
    Pages.load: const LoadAppPage(),
    Pages.onboarding: const OnboardingPage(),
    Pages.home: const HomePage(),
  };

  static Widget? getPage(String page) {
    return pagesMap[page];
  }
}
