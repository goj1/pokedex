import 'package:mobx/mobx.dart';

class PokemonEntity {
  Observable<String> name;
  Observable<String> url;

  PokemonEntity({
    required this.name,
    required this.url,
  });

  factory PokemonEntity.fromJson(Map<String, dynamic> json) {
    return PokemonEntity(
      name: json['name'],
      url: json['url'] ?? '',
    );
  }
}
