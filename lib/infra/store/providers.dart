import 'package:get_it/get_it.dart';
import 'package:pokedex/features/home/data/datasources/get_pokemons_datasource.dart';
import 'package:pokedex/features/home/data/repositories_impl/get_pokemons_repository_impl.dart';
import 'package:pokedex/features/home/domain/repositories/get_pokemons_repository.dart';
import 'package:pokedex/features/home/domain/usecases/get_pokemons_use_case.dart';
import 'package:pokedex/features/home/ui/controllers/home_controller.dart';
import 'package:pokedex/features/onboarding/ui/controllers/onboarding_controller.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';

final getIt = GetIt.instance;

void setupProviders() {
  getIt.registerSingleton<GetPokemonsDatasource>(GetPokemonsDatasource());
  getIt.registerSingleton<GetPokemonsRepository>(GetPokemonsRepositoryImpl());
  getIt.registerSingleton<GetPokemonsUseCase>(GetPokemonsUseCase());

  getIt.registerSingleton<OnboardingController>(OnboardingController());
  getIt.registerSingleton<CoreController>(CoreController());
  getIt.registerSingleton<HomeController>(HomeController());
}
