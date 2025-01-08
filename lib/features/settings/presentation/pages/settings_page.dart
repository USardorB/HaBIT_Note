import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCR'),
        // TODO make this dynamic/programmatic
        backgroundColor: Colors.white,
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
