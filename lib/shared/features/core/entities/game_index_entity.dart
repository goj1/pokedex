import 'package:mobx/mobx.dart';

class GameIndexEntity {
  Observable<int> gameIndex;
  Observable<String> name;
  Observable<String> url;

  GameIndexEntity({
    required this.gameIndex,
    required this.name,
    required this.url,
  });

  factory GameIndexEntity.fromJson(Map<String, dynamic> json) {
    return GameIndexEntity(
      gameIndex: json['gameIndex'],
      name: json['version']['name'],
      url: json['version']['url'],
    );
  }
}
