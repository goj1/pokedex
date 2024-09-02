import 'package:mobx/mobx.dart';

class HeldItemEntity {
  Observable<String> name;
  Observable<String> url;
  Observable<String> localtionAreaEncounters;
  Observable<VersionDetailEntity> versionDetails;

  HeldItemEntity({
    required this.name,
    required this.url,
  });

  factory HeldItemEntity.fromJson(Map<String, dynamic> json) {
    return HeldItemEntity(
      name: json['item']['name'],
      url: json['item']['url'],
    );
  }
}
