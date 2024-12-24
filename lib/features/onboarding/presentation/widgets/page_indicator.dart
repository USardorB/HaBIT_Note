import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  final int count;
  final int selectedIndex;
  const PageViewIndicator({
    super.key,
    this.count = 3,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          duration: Durations.medium3,
          width: index == selectedIndex ? 65 : 36,
          height: 16,
          decoration: BoxDecoration(
            color: switch (index == selectedIndex) {
              true => colors.primary,
              false => colors.surfaceContainerLow,
            },
            borderRadius: BorderRadius.circular(100),
          ),
        );
      }),
    );
  }
}
