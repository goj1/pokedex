// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'HomeControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$pokemonResultEntityAtom =
      Atom(name: 'HomeControllerBase.pokemonResultEntity', context: context);

  @override
  PokemonResultEntity? get pokemonResultEntity {
    _$pokemonResultEntityAtom.reportRead();
    return super.pokemonResultEntity;
  }

  @override
  set pokemonResultEntity(PokemonResultEntity? value) {
    _$pokemonResultEntityAtom.reportWrite(value, super.pokemonResultEntity, () {
      super.pokemonResultEntity = value;
    });
  }

  late final _$loadDataAsyncAction =
      AsyncAction('HomeControllerBase.loadData', context: context);

  @override
  Future loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$getImagesAsyncAction =
      AsyncAction('HomeControllerBase.getImages', context: context);

  @override
  Future getImages() {
    return _$getImagesAsyncAction.run(() => super.getImages());
  }

  late final _$getImagesByCategoryAsyncAction =
      AsyncAction('HomeControllerBase.getImagesByCategory', context: context);

  @override
  Future getImagesByCategory() {
    return _$getImagesByCategoryAsyncAction
        .run(() => super.getImagesByCategory());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic showMessage(BuildContext context, String texto) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.showMessage');
    try {
      return super.showMessage(context, texto);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
pokemonResultEntity: ${pokemonResultEntity}
    ''';
  }
}
