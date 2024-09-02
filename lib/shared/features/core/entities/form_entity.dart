import 'package:mobx/mobx.dart';

class FormEntity {
  Observable<String> name;
  Observable<String> url;

  FormEntity({
    required this.name,
    required this.url,
  });

  factory FormEntity.fromJson(Map<String, dynamic> json) {
    return FormEntity(
      name: json['name'],
      url: json['url'],
    );
  }
}
