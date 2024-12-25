import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).surfaceContainerLow,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: ColorScheme.of(context).surface,
          indicatorColor: ColorScheme.of(context).surface,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.sticky_note_2_outlined),
              label: 'Notes',
            ),
            NavigationDestination(
              icon: Icon(Icons.image_search),
              label: 'OCR',
            ),
            NavigationDestination(
              icon: Icon(Icons.help_outline),
              label: 'Help',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Me',
            ),
          ],
        ),
      ),
    );
  }
}
