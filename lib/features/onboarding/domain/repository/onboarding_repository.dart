import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/onboarding/domain/entities/onboarding_item.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, List<OnboardingItem>>> getOnboardingData();
}
