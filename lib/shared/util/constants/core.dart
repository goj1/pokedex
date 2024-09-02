import 'dart:io';
import 'dart:math';

abstract class Constants {
  //Collections
  static String collectionUser = 'users';
  static String collectionReceipts = 'receipts';

  //Urls
  static String homeApp = 'https://lemoncodes.com/portfolio/indica-filme/if.html';

  //Filters
  static List<String> filters = ['Fitness', 'Diet', 'Light', 'Sem glúten', 'Sem lactose', 'Vergana', 'Vegetariana'];
  static List<String> categories = ['Dish', 'Drink'];

  //All
  static String targetSearchGeneric = 'generic';
  static String targetSearchSpecifc = 'specifc';

  static String linkIOSPt = 'Olá, você está compartilhando um link de download do aplicativo NOME DO APP, '
      'um aplicativo de culinária muito divertido e útil de usar. Aproveite! '
      'Clicando no link abaixo você será redirecionado(a) até a loja para saber mais e baixar o NOME DO APP! '
      'https://appstore.com';
  static String linkIOSEn = 'Hello, you are sharing a download link for the NOME DO APP app, '
      'a very fun and useful cooking application. Enjoy! By clicking the link below, '
      'you will be redirected to the store to learn more and download NOME DO APP! '
      'https://appstore.com';
  static String linkAndroidPt = 'Olá, você está compartilhando um link de download do aplicativo NOME DO APP, '
      'um aplicativo de culinária muito divertido e útil de usar. Aproveite! '
      'Clicando no link abaixo você será redirecionado(a) até a loja para saber mais e baixar o NOME DO APP! '
      'https://play.google.com/store/apps/details?id=com.lemoncodes.indicafilme.indica_filme';
  static String linkAndroidEn = 'Hello, you are sharing a download link for the NOME DO APP app, '
      'a very fun and useful cooking application. Enjoy! By clicking the link below, '
      'you will be redirected to the store to learn more and download NOME DO APP! '
      'https://play.google.com/store/apps/details?id=com.lemoncodes.indicafilme.indica_filme';

  static String bannerAdIdAndroid = 'ca-app-pub-6112771507954171/2982933437';
  static String bannerAdIdIos = 'ca-app-pub-6112771507954171/8866649656';

  static String intertstitialAdIdAndroid = 'ca-app-pub-6112771507954171/8195414432';
  static String intertstitialAdIdIos = 'ca-app-pub-6112771507954171/6636620876';

  static String getBannerId() => Platform.isIOS ? bannerAdIdIos : bannerAdIdAndroid;

  static String getBannerIdTest() =>
      Platform.isIOS ? 'ca-app-pub-3940256099942544/6300978111' : 'ca-app-pub-3940256099942544/2934735716';

  static String getIntersticialId() => Platform.isIOS ? intertstitialAdIdIos : intertstitialAdIdAndroid;

  static String getIntersticialIdTest() =>
      Platform.isIOS ? 'ca-app-pub-3940256099942544/1033173712' : 'ca-app-pub-3940256099942544/4411468910';

  static String token = '';

  static String geminiKey = 'AIzaSyCrYg_XKBDhSKq5GQWv80w2_eX-G6IohpM';

  static String searchHelperTextKey = 'search_helper_text_key';

  static String getInterstitialId() => Platform.isIOS ? intertstitialAdIdIos : intertstitialAdIdAndroid;

  static String getRandomString(int length) {
    Random rnd = Random();
    String chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return String.fromCharCodes(Iterable.generate(length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
  }

  static String pexelsKey = 'nBwtGyAyOIESfXq3Fron0wcoQmXm0Jv40GerKn2RbGuoYk5sdqBH3sPT';
}
