// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CoreController on CoreControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'CoreControllerBase.isLoading', context: context);

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

  late final _$hasInternetConnectionAtom =
      Atom(name: 'CoreControllerBase.hasInternetConnection', context: context);

  @override
  bool get hasInternetConnection {
    _$hasInternetConnectionAtom.reportRead();
    return super.hasInternetConnection;
  }

  @override
  set hasInternetConnection(bool value) {
    _$hasInternetConnectionAtom.reportWrite(value, super.hasInternetConnection,
        () {
      super.hasInternetConnection = value;
    });
  }

  late final _$appAccessTokenAtom =
      Atom(name: 'CoreControllerBase.appAccessToken', context: context);

  @override
  String get appAccessToken {
    _$appAccessTokenAtom.reportRead();
    return super.appAccessToken;
  }

  @override
  set appAccessToken(String value) {
    _$appAccessTokenAtom.reportWrite(value, super.appAccessToken, () {
      super.appAccessToken = value;
    });
  }

  late final _$onboardingShowedAtom =
      Atom(name: 'CoreControllerBase.onboardingShowed', context: context);

  @override
  bool get onboardingShowed {
    _$onboardingShowedAtom.reportRead();
    return super.onboardingShowed;
  }

  @override
  set onboardingShowed(bool value) {
    _$onboardingShowedAtom.reportWrite(value, super.onboardingShowed, () {
      super.onboardingShowed = value;
    });
  }

  late final _$languageAtom =
      Atom(name: 'CoreControllerBase.language', context: context);

  @override
  String get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(String value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  late final _$countryCodeAtom =
      Atom(name: 'CoreControllerBase.countryCode', context: context);

  @override
  String get countryCode {
    _$countryCodeAtom.reportRead();
    return super.countryCode;
  }

  @override
  set countryCode(String value) {
    _$countryCodeAtom.reportWrite(value, super.countryCode, () {
      super.countryCode = value;
    });
  }

  late final _$loadDataAsyncAction =
      AsyncAction('CoreControllerBase.loadData', context: context);

  @override
  Future<void> loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$saveAppAccessTokenAsyncAction =
      AsyncAction('CoreControllerBase.saveAppAccessToken', context: context);

  @override
  Future saveAppAccessToken() {
    return _$saveAppAccessTokenAsyncAction
        .run(() => super.saveAppAccessToken());
  }

  late final _$clearStorageAsyncAction =
      AsyncAction('CoreControllerBase.clearStorage', context: context);

  @override
  Future clearStorage() {
    return _$clearStorageAsyncAction.run(() => super.clearStorage());
  }

  late final _$saveAppInfoAsyncAction =
      AsyncAction('CoreControllerBase.saveAppInfo', context: context);

  @override
  Future saveAppInfo({required bool value}) {
    return _$saveAppInfoAsyncAction.run(() => super.saveAppInfo(value: value));
  }

  late final _$getAppInfoAsyncAction =
      AsyncAction('CoreControllerBase.getAppInfo', context: context);

  @override
  Future getAppInfo() {
    return _$getAppInfoAsyncAction.run(() => super.getAppInfo());
  }

  late final _$saveTermsAnswerAsyncAction =
      AsyncAction('CoreControllerBase.saveTermsAnswer', context: context);

  @override
  Future saveTermsAnswer(bool value) {
    return _$saveTermsAnswerAsyncAction.run(() => super.saveTermsAnswer(value));
  }

  late final _$getAppTokenAsyncAction =
      AsyncAction('CoreControllerBase.getAppToken', context: context);

  @override
  Future getAppToken() {
    return _$getAppTokenAsyncAction.run(() => super.getAppToken());
  }

  late final _$CoreControllerBaseActionController =
      ActionController(name: 'CoreControllerBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sethasInternetConnection(bool value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.sethasInternetConnection');
    try {
      return super.sethasInternetConnection(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAppAccessToken(String value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.setAppAccessToken');
    try {
      return super.setAppAccessToken(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTermsAnswer(bool value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.setTermsAnswer');
    try {
      return super.setTermsAnswer(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hasInternetConnection: ${hasInternetConnection},
appAccessToken: ${appAccessToken},
onboardingShowed: ${onboardingShowed},
language: ${language},
countryCode: ${countryCode}
    ''';
  }
}
