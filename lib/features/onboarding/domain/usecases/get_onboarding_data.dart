import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/onboarding/domain/entities/onboarding_item.dart';
import 'package:habit_note/features/onboarding/domain/repository/onboarding_repository.dart';

class GetOnboardingData implements Usecase<List<OnboardingItem>, Null> {
  final OnboardingRepository _repository;

  const GetOnboardingData(this._repository);
  @override
  Future<Either<Failure, List<OnboardingItem>>> call({Null param}) {
    return _repository.getOnboardingData();
  }
}
