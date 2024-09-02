
import 'package:pokedex/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:pokedex/features/onboarding/domain/repository/onboarding_repository.dart';
import 'package:pokedex/infra/store/providers.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingDataSource onboardingDataSource = getIt<OnboardingDataSource>();

  @override
  void saveStateTerms() {
    // onboardingDataSource.saveTerms();
  }
}