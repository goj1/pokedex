import 'package:mobx/mobx.dart';
import 'package:pokedex/shared/features/core/entities/pokemon_entity.dart';

class PokemonResultEntity {
  Observable<int> count;
  Observable<String> next;
  Observable<String> previous;
  Observable<List<PokemonEntity>> results;

  PokemonResultEntity({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokemonResultEntity.fromJson(Map<String, dynamic> json) {
    return PokemonResultEntity(
      count: Observable(json['count']),
      next: Observable(json['next']),
      previous: Observable(json['previous']),
      results: Observable(List.of(json['next']).map((result) => PokemonEntity.fromJson(result)).toList()),
    );
  }
}
