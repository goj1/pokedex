import 'package:mobx/mobx.dart';

part 'onboarding_controller.g.dart';

class OnboardingController = OnboardingControllerBase with _$OnboardingController;

abstract class OnboardingControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  bool agreeTerms = false;

  @observable
  bool agreePrivacy = false;

  @observable
  int initialIndexTerms = 0;

  @action
  saveStateTerms() async {
    //TODO: Implementar salvar com shared preferences
  }

  @action
  setInitialIndexTerms(int value) {
    initialIndexTerms = value;
  }

  @action
  serIsLoading(bool value) {
    isLoading = value;
  }

  @action
  setAgreeTerms(bool value) {
    agreeTerms = value;
  }

  @action
  setAgreePrivacy(bool value) {
    agreePrivacy = value;
  }
}
