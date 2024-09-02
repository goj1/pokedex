// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingController on OnboardingControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'OnboardingControllerBase.isLoading', context: context);

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

  late final _$agreeTermsAtom =
      Atom(name: 'OnboardingControllerBase.agreeTerms', context: context);

  @override
  bool get agreeTerms {
    _$agreeTermsAtom.reportRead();
    return super.agreeTerms;
  }

  @override
  set agreeTerms(bool value) {
    _$agreeTermsAtom.reportWrite(value, super.agreeTerms, () {
      super.agreeTerms = value;
    });
  }

  late final _$agreePrivacyAtom =
      Atom(name: 'OnboardingControllerBase.agreePrivacy', context: context);

  @override
  bool get agreePrivacy {
    _$agreePrivacyAtom.reportRead();
    return super.agreePrivacy;
  }

  @override
  set agreePrivacy(bool value) {
    _$agreePrivacyAtom.reportWrite(value, super.agreePrivacy, () {
      super.agreePrivacy = value;
    });
  }

  late final _$initialIndexTermsAtom = Atom(
      name: 'OnboardingControllerBase.initialIndexTerms', context: context);

  @override
  int get initialIndexTerms {
    _$initialIndexTermsAtom.reportRead();
    return super.initialIndexTerms;
  }

  @override
  set initialIndexTerms(int value) {
    _$initialIndexTermsAtom.reportWrite(value, super.initialIndexTerms, () {
      super.initialIndexTerms = value;
    });
  }

  late final _$saveStateTermsAsyncAction =
      AsyncAction('OnboardingControllerBase.saveStateTerms', context: context);

  @override
  Future saveStateTerms() {
    return _$saveStateTermsAsyncAction.run(() => super.saveStateTerms());
  }

  late final _$OnboardingControllerBaseActionController =
      ActionController(name: 'OnboardingControllerBase', context: context);

  @override
  dynamic setInitialIndexTerms(int value) {
    final _$actionInfo = _$OnboardingControllerBaseActionController.startAction(
        name: 'OnboardingControllerBase.setInitialIndexTerms');
    try {
      return super.setInitialIndexTerms(value);
    } finally {
      _$OnboardingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic serIsLoading(bool value) {
    final _$actionInfo = _$OnboardingControllerBaseActionController.startAction(
        name: 'OnboardingControllerBase.serIsLoading');
    try {
      return super.serIsLoading(value);
    } finally {
      _$OnboardingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAgreeTerms(bool value) {
    final _$actionInfo = _$OnboardingControllerBaseActionController.startAction(
        name: 'OnboardingControllerBase.setAgreeTerms');
    try {
      return super.setAgreeTerms(value);
    } finally {
      _$OnboardingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAgreePrivacy(bool value) {
    final _$actionInfo = _$OnboardingControllerBaseActionController.startAction(
        name: 'OnboardingControllerBase.setAgreePrivacy');
    try {
      return super.setAgreePrivacy(value);
    } finally {
      _$OnboardingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
agreeTerms: ${agreeTerms},
agreePrivacy: ${agreePrivacy},
initialIndexTerms: ${initialIndexTerms}
    ''';
  }
}
