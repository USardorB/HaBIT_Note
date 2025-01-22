import 'package:flutter/material.dart';
import 'package:habit_note/features/help/presentation/pages/help_page.dart';
import 'package:habit_note/features/me/presentation/pages/me_view.dart';
import 'package:habit_note/features/notes/presentation/pages/notes_page.dart';
import 'package:habit_note/features/ocr/presentation/pages/ocr_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [NotesPage(), OCRPage(), HelpPage(), MeView()][_index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: ColorScheme.of(context).secondary,
          indicatorColor: ColorScheme.of(context).secondary.withBlue(250),
          onDestinationSelected: (value) => setState(() => _index = value),
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
