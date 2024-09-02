import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/features/home/domain/usecases/get_pokemons_use_case.dart';
import 'package:pokedex/infra/factories/http/result_wrapper.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/entities/pokemon_result_entity.dart';
import 'package:pokedex/shared/ui/snackbar/custom_snackbar.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final GlobalKey formKey = GlobalKey<FormState>();
  FocusNode focusSearchInput = FocusNode();
  TextEditingController searchInputController = TextEditingController();

  @observable
  bool isLoading = false;

  @observable
  PokemonResultEntity? pokemonResultEntity;

  @action
  loadData() async {

  }

  @action
  getPokemons() async {
    var result = getIt<GetPokemonsUseCase>();
    // var result = getIt<GetPhotosUseCase>();
    // ResultWrapper<ListImageEntity> resultWrapper = await result(
    //   listImageEntity?.nextPage.extractPageFromUrl() ?? 1,
    // );
    //
    // if (resultWrapper.isSuccess) {
    //   listImageEntity = resultWrapper.data!;
    //   images.addAll(ObservableList.of(resultWrapper.data!.photos));
    // }
  }

  @action
  getImagesByCategory() async {
    // var result = getIt<GetPhotosByCategoryUseCase>();
    // ResultWrapper<ListImageEntity> resultWrapper = await result(
    //   listImageEntityByCategory?.nextPage.extractPageFromUrl() ?? 1,
    //   imageCategory.name,
    // );
    //
    // if (resultWrapper.isSuccess) {
    //   listImageEntityByCategory = resultWrapper.data!;
    //   imagesByCategory.addAll(ObservableList.of(resultWrapper.data!.photos));
    // }
  }

  @action
  showMessage(BuildContext context, String texto) {
    if (texto.isNotEmpty) {
      CustomSnackBar.showSnackBar(
        context,
        texto,
      );
    }
  }

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }
}
