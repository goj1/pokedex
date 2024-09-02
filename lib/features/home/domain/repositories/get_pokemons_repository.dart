import 'package:pokedex/infra/factories/http/result_wrapper.dart';
import 'package:pokedex/shared/features/core/entities/pokemon_result_entity.dart';

abstract class GetPokemonsRepository {
  Future<ResultWrapper<PokemonResultEntity>> call(int page);
}