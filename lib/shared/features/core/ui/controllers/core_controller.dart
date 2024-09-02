import 'package:mobx/mobx.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'core_controller.g.dart';

class CoreController = CoreControllerBase with _$CoreController;

abstract class CoreControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  bool hasInternetConnection = true;

  @observable
  String appAccessToken = '';

  @observable
  bool onboardingShowed = false;

  @observable
  String language = 'pt';

  @observable
  String countryCode = 'BR';

  @action
  Future<void> loadData() async {
    await getAppInfo();
  }

  @action
  saveAppAccessToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(CoreEnum.appAccessToken.name, appAccessToken);
  }

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }

  @action
  void sethasInternetConnection(bool value) {
    hasInternetConnection = value;
  }

  @action
  void setAppAccessToken(String value) {
    appAccessToken = value;
  }

  @action
  void setTermsAnswer(bool value) {
    onboardingShowed = value;
  }

  @action
  clearStorage() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
  }

  @action
  saveAppInfo({required bool value}) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    onboardingShowed = await sp.setBool(CoreEnum.police.name, value);
  }

  @action
  getAppInfo() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    onboardingShowed = sp.getBool(CoreEnum.police.name) ?? false;
  }

  @action
  saveTermsAnswer(bool value) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool(CoreEnum.police.name, value);
  }

  @action
  getAppToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    appAccessToken = sp.getString(CoreEnum.appAccessToken.name) ?? '';
  }
}
