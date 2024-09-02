import 'package:mobx/mobx.dart';

class FlavorEntity {
  Observable<int> potency;
  Observable<String> name;
  Observable<String> url;

  FlavorEntity({
    required this.potency,
    required this.name,
    required this.url,
  });

  factory FlavorEntity.fromJson(Map<String, dynamic> json) {
    return FlavorEntity(
      potency: json['potency'],
      name: json['name'],
      url: json['url'],
    );
  }
}
