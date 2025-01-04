import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).surfaceContainerLow,
      body: child,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: ColorScheme.of(context).surface,
          indicatorColor: ColorScheme.of(context).surface,
          onDestinationSelected: (value) {
            if (value == 0) context.go('/app');
            if (value == 1) context.go('/ocr');
            if (value == 2) context.go('/help');
            if (value == 3) context.go('/settings');
          },
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
