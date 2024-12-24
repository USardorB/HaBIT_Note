import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:habit_note/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:habit_note/features/onboarding/data/models/onboarding_item.dart';

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  @override
  Future<List<OnboardingItemModel>> loadOnboardingData() async {
    try {
      final json = await rootBundle.loadString('assets/jsons/onboaring.json');
      final items = jsonDecode(json)['items'] as List;

      return items
          .map((e) => OnboardingItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
