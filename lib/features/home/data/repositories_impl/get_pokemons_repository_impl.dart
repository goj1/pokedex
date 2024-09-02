import 'dart:convert';

import 'package:pokedex/features/home/data/datasources/get_pokemons_datasource.dart';
import 'package:pokedex/features/home/domain/repositories/get_pokemons_repository.dart';
import 'package:pokedex/infra/factories/http/result_wrapper.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/entities/pokemon_result_entity.dart';

class GetPokemonsRepositoryImpl implements GetPokemonsRepository {
  @override
  Future<ResultWrapper<PokemonResultEntity>> call(int page) async {
    try {
      GetPokemonsDatasource getPokemonsDatasource = getIt<GetPokemonsDatasource>();
      var result = await getPokemonsDatasource(page);
      PokemonResultEntity pokemonResultEntity = PokemonResultEntity.fromJson(jsonDecode(result.body));
      return ResultWrapper(
        payload: pokemonResultEntity,
      );
    } catch (e) {
      return ResultWrapper<PokemonResultEntity>(
        message: 'Algo deu errado!',
      );
    }
  }
}
