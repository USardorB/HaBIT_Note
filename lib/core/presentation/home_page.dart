import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  const HomePage({super.key, required this.child});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: ColorScheme.of(context).secondary,
          indicatorColor: ColorScheme.of(context).secondary.withBlue(250),
          onDestinationSelected: (value) {
            if (value == 0) context.go('/notes');
            if (value == 1) context.go('/ocr');
            if (value == 2) context.go('/help');
            if (value == 3) context.go('/me');
            setState(() => _index = value);
          },
          selectedIndex: _index,
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
