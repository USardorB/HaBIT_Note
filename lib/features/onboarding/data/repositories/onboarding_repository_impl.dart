import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:habit_note/features/onboarding/domain/entities/onboarding_item.dart';
import 'package:habit_note/features/onboarding/domain/repository/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource _localDataSource;

  const OnboardingRepositoryImpl(this._localDataSource);
  @override
  Future<Either<Failure, List<OnboardingItem>>> getOnboardingData() async {
    try {
      final resp = await _localDataSource.loadOnboardingData();
      return Right(resp
          .map((e) => OnboardingItem(
                id: e.id,
                title: e.title,
                subtitle: e.subtitle,
                assetPath: e.assetPath,
              ))
          .toList());
    } catch (e) {
      return const Left(Failure.unknown);
    }
  }
}
