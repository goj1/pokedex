import 'package:mobx/mobx.dart';

class VersionDetailEntity {
  Observable<int> rarity;
  Observable<String> name;
  Observable<String> url;

  VersionDetailEntity({
    required this.rarity,
    required this.name,
    required this.url,
  });

  factory VersionDetailEntity.fromJson(Map<String, dynamic> json) {
    return VersionDetailEntity(
      rarity: json['version_detail']['rarity'],
      name: json['version_detail']['name'],
      url: json['version_detail']['url'],
    );
  }
}
