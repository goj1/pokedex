import 'package:mobx/mobx.dart';
import 'package:pokedex/shared/features/core/entities/ability_entity.dart';
import 'package:pokedex/shared/features/core/entities/firmness_entity.dart';
import 'package:pokedex/shared/features/core/entities/flavor_entity.dart';
import 'package:pokedex/shared/features/core/entities/fling_effect_entity.dart';
import 'package:pokedex/shared/features/core/entities/form_entity.dart';
import 'package:pokedex/shared/features/core/entities/game_index_entity.dart';
import 'package:pokedex/shared/features/core/entities/held_item_entity.dart';

class PokemonDetailsEntity {
  ObservableList<int> id;
  Observable<String> name;
  Observable<int> baseExperience;
  Observable<int> height;
  Observable<bool> isDefault;
  Observable<int> order;
  Observable<int> weight;
  ObservableList<AbilityEntity> abilities;
  ObservableList<FormEntity> forms;
  ObservableList<GameIndexEntity> gameIndices;
  ObservableList<HeldItemEntity> heldItems;
  Observable<int> grouthTime;
  Observable<int> maxHarvest;
  Observable<int> naturalGiftPower;
  Observable<int> size;
  Observable<int> smoothness;
  Observable<int> soilDryness;
  Observable<FirmnessEntity> firmness;
  ObservableList<FlavorEntity> flavors;
  Observable<FlingEffectEntity> flingEffect;

  PokemonDetailsEntity({
    required this.name,
    required this.url,
  });

  factory PokemonDetailsEntity.fromJson(Map<String, dynamic> json) {
    return PokemonDetailsEntity(
      name: json['name'],
      url: json['url'],
    );
  }
}
