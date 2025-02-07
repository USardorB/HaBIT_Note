import 'package:bloc/bloc.dart';
import 'package:habit_note/features/onboarding/domain/entities/onboarding_item.dart';
import 'package:habit_note/features/onboarding/domain/usecases/get_onboarding_data.dart';
import 'package:injectable/injectable.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingCubitState> {
  final GetOnboardingData _getOnboardingData;
  OnboardingCubit(this._getOnboardingData)
      : super(OnboardingCubitState.initial);

  Future<void> getitems() async {
    final resp = await _getOnboardingData();
    resp.fold(
      (l) => emit(const OnboardingCubitState(error: 'An error occured')),
      (items) => emit(OnboardingCubitState(items: items)),
    );
  }
}

class OnboardingCubitState {
  final List<OnboardingItem> items;
  final String? error;
  final bool isLoading;

  const OnboardingCubitState({
    this.items = const [],
    this.error,
    this.isLoading = false,
  });

  static const initial = OnboardingCubitState(isLoading: true);

  @override
  bool operator ==(covariant OnboardingCubitState other) =>
      error == other.error ||
      items.length == other.items.length ||
      isLoading == other.isLoading;

  @override
  int get hashCode => error.hashCode + isLoading.hashCode + items.length;
}
