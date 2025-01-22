import 'package:flutter/material.dart';
import 'package:habit_note/core/const/color_plate.dart';

class ColorPlateBottomSheet extends StatelessWidget {
  const ColorPlateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 16,
          ),
          leading: Icon(Icons.delete_outline),
          title: Text('Delete note'),
        ),
        const Divider(height: 0),
        Text(
          'Select color',
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
