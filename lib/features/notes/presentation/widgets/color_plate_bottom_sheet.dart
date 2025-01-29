import 'package:flutter/material.dart';
import 'package:habit_note/core/const/color_plate.dart';
import 'package:habit_note/core/l10n/strings.dart';

class ColorPlateBottomSheet extends StatelessWidget {
  const ColorPlateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 16,
          ),
          leading: const Icon(Icons.delete_outline),
          title: Text(Strings.deleteNote),
        ),
        const Divider(height: 0),
        Text(
          Strings.selectColor,
          style: TextTheme.of(context).bodyLarge,
        ),
        GridView.count(
          crossAxisCount: 5,
          shrinkWrap: true,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: const EdgeInsets.symmetric(
            horizontal: 52,
            vertical: 24,
          ),
          children: List.generate(
            ColorPlate.values.length,
            (index) {
              final plateItem = ColorPlate.values.elementAt(index);
              return DecoratedBox(
                decoration: BoxDecoration(
                  border: switch (plateItem) {
                    ColorPlate.white => Border.all(
                        color: Colors.black,
                      ),
                    _ => null,
                  },
                  shape: BoxShape.circle,
                  color: plateItem.color,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
