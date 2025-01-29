import 'package:flutter/material.dart';
import 'package:habit_note/core/l10n/strings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.ocr),
        backgroundColor: ColorScheme.of(context).surfaceContainerLow,
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     color: ColorScheme.of(context).outline,
        //     icon: const Icon(Icons.palette),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.grid_view_sharp),
        //     color: ColorScheme.of(context).outline,
        //     selectedIcon: const Icon(Icons.view_agenda),
        //   ),
        // ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Spacer(flex: 5),
          // Placeholder(),
          // Spacer(),
          // Text(
          //   'Create your first note !',
          //   textAlign: TextAlign.center,
          // ),
          // Spacer(flex: 5),
        ],
      ),
    );
  }
}
