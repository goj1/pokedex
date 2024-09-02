import 'package:pokedex/infra/factories/http/api_pexels_factory.dart';
import 'package:http/http.dart';
import 'package:pokedex/shared/util/constants/uris.dart';

class GetPokemonsDatasource {
  Future<Response> call(int page) async {
    try {
      return await ApiPexelsFactory.get(
        url: Uris.baseUrlPokeapi,
        resource: Uris.pokemons,
        queryParams: ['offset=$page', 'limit=${Uris.limit}']
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}