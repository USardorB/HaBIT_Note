import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_note/core/const/asset_consts.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_note_page.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_todo_page.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
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
        onPressed: () => displayGenericDialog(context).then(
          (route) => context.push(route),
        ),
        backgroundColor: ColorScheme.of(context).primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 5),
          SvgPicture.asset(kAssetNoNote),
          const Spacer(),
          const Text(
            'Create your first note !',
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }

  Future<Route?> displayGenericDialog<Route>(BuildContext context) {
    return showDialog<Route?>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 16.0),
          title: const Text('New', textAlign: TextAlign.center),
          titleTextStyle: TextTheme.of(context).bodyLarge,
          children: [
            ListTile(
              leading: const Icon(Icons.keyboard),
              title: const Text('Add note'),
              onTap: () => Navigator.of(context).pop(AddOrEditNotePage.route()),
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text('Add to-do'),
              onTap: () => Navigator.of(context).pop(AddOrEditTODOPage.route()),
            ),
          ],
        );
      },
    );
  }
}
