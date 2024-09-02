import 'package:mobx/mobx.dart';

class FlingEffectEntity {
  Observable<int> potency;
  Observable<String> name;
  Observable<String> url;

  FlingEffectEntity({
    required this.potency,
    required this.name,
    required this.url,
  });

  factory FlingEffectEntity.fromJson(Map<String, dynamic> json) {
    return FlingEffectEntity(
      potency: json['potency'],
      name: json['name'],
      url: json['url'],
    );
  }
}
