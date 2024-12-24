import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_note/features/onboarding/domain/entities/onboarding_item.dart';

class PageItem extends StatelessWidget {
  final OnboardingItem item;
  const PageItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          item.assetPath,
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
          title: Text(item.title),
          subtitle: Text(item.subtitle),
        ),
      ],
    );
  }
}
