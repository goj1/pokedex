import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/features/home/ui/controllers/home_controller.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/ui/app/custom_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeController _homeController = getIt<HomeController>();
  final CoreController _coreController = getIt<CoreController>();
  // final ScrollController _scrollPhrasesController = ScrollController();

  @override
  void initState() {
    // _scrollPhrasesController.addListener(loadMorePhrases);
    super.initState();
  }

  @override
  void dispose() {
    // _scrollPhrasesController.dispose();
    super.dispose();
  }

  void loadMorePhrases() async {
    // double limitPosition = _scrollPhrasesController.position.maxScrollExtent;
    // double currentPosition = _scrollPhrasesController.position.pixels;

    // if (currentPosition == limitPosition && _homeController.listPhraseEntity!.hasNextPage) {
      // await _homeController.getPhrases();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: false,
      withSafeArea: true,
      namePage: AppLocalizations.of(context)!.homeTitle,
      child: LayoutBuilder(
        builder: (context, contraints) => ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: contraints.maxHeight,
          ),
          child: Observer(
            builder: (_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
