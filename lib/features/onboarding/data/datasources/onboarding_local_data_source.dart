import 'package:habit_note/features/onboarding/data/models/onboarding_item.dart';

abstract class OnboardingLocalDataSource {
  Future<List<OnboardingItemModel>> loadOnboardingData();
}
