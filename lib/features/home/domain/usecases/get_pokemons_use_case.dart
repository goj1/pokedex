import 'package:pokedex/features/home/domain/repositories/get_pokemons_repository.dart';
import 'package:pokedex/infra/factories/http/result_wrapper.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/entities/pokemon_result_entity.dart';

class GetPokemonsUseCase {
  Future<ResultWrapper<PokemonResultEntity>> call(int page) async {
    try {
      GetPokemonsRepository getPokemonsRepository = getIt<GetPokemonsRepository>();
      return await getPokemonsRepository(page);
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}