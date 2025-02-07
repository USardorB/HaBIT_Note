import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/features/help/presentation/pages/help_page.dart';
import 'package:habit_note/features/me/presentation/pages/me_view.dart';
import 'package:habit_note/features/notes/presentation/controllers/notes_cubit.dart';
import 'package:habit_note/features/notes/presentation/pages/notes_page.dart';
import 'package:habit_note/features/ocr/presentation/pages/ocr_page.dart';
import 'package:habit_note/injection.dart';

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
      body: [
        BlocProvider(
          create: (BuildContext context) => sl<NotesCubit>(),
          child: const NotesPage(),
        ),
        const OCRPage(),
        const HelpPage(),
        const MeView(),
      ][_index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: ColorScheme.of(context).secondary,
          indicatorColor: ColorScheme.of(context).secondary.withBlue(250),
          onDestinationSelected: (value) => setState(() => _index = value),
          selectedIndex: _index,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.sticky_note_2_outlined),
              label: Strings.notes,
            ),
            NavigationDestination(
              icon: const Icon(Icons.image_search),
              label: Strings.ocr,
            ),
            NavigationDestination(
              icon: const Icon(Icons.help_outline),
              label: Strings.help,
            ),
            NavigationDestination(
              icon: const Icon(Icons.person_outline),
              label: Strings.me,
            ),
          ],
        ),
      ),
    );
  }
}
