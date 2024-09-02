import 'package:mobx/mobx.dart';

class MoveEntity {
  Observable<String> name;
  Observable<String> url;

  MoveEntity({
    required this.name,
    required this.url,
  });

  factory MoveEntity.fromJson(Map<String, dynamic> json) {
    return MoveEntity(
      name: json['move']['name'],
      url: json['move']['url'],
    );
  }
}
