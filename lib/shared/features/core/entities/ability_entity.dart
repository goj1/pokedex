import 'package:mobx/mobx.dart';

class AbilityEntity {
  Observable<String> name;
  Observable<String> url;
  Observable<bool> isHiden;
  Observable<int> slot;

  AbilityEntity({
    required this.name,
    required this.url,
    required this.isHiden,
    required this.slot,
  });

  factory AbilityEntity.fromJson(Map<String, dynamic> json) {
    return AbilityEntity(
      name: json['name'],
      url: json['url'],
      isHiden: json['is_hiden'],
      slot: json['slot'],
    );
  }
}
