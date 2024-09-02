import 'package:mobx/mobx.dart';

class FirmnessEntity {
  Observable<String> name;
  Observable<String> url;

  FirmnessEntity({
    required this.name,
    required this.url,
  });

  factory FirmnessEntity.fromJson(Map<String, dynamic> json) {
    return FirmnessEntity(
      name: json['name'],
      url: json['url'],
    );
  }
}
