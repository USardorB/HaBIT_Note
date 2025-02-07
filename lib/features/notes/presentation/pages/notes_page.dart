import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_note/core/const/asset_consts.dart';
import 'package:habit_note/core/dialogs/generic_dialog.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/features/notes/presentation/controllers/notes_cubit.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_note_page.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_todo_page.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (_, state) => Scaffold(
        appBar: AppBar(
          title: Text(Strings.notes),
          backgroundColor: ColorScheme.of(context).surfaceContainerLow,
          actions: [
            IconButton(
              onPressed: () {},
              color: ColorScheme.of(context).outline,
              icon: const Icon(Icons.palette),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_sharp),
              color: ColorScheme.of(context).outline,
              selectedIcon: const Icon(Icons.view_agenda),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final route = await displayGenericDialog(context);
            BlocProvider.of<NotesCubit>(context).state;
            if (route != null) {
              final page = switch (route) {
                0 => const AddOrEditNotePage(),
                _ => const AddOrEditTODOPage(),
              };

              BlocProvider.value(
                value: BlocProvider.of<NotesCubit>(context),
                child: MaterialPageRoute(builder: (context) => page),
              );
            }
          },
          backgroundColor: ColorScheme.of(context).primary,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 48),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 5),
            SvgPicture.asset(kAssetNoNote),
            const Spacer(),
            Text(
              Strings.createYourFirstNote,
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
