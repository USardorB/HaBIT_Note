import 'package:flutter/material.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_note_page.dart';
import 'package:habit_note/features/notes/presentation/pages/add_or_edit_todo_page.dart';

Future<Route?> displayGenericDialog<Route>(
  BuildContext context, {
  DialogUseCases usecase = DialogUseCases.create,
  Function? doSmth,
  Function? doSmth1,
}) {
  return showDialog<Route?>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 16.0),
        title: Text(usecase.title, textAlign: TextAlign.center),
        titleTextStyle: TextTheme.of(context).bodyLarge,
        children: [
          ListTile(
            leading: Icon(usecase.icon1),
            title: Text(usecase.option1),
            onTap: () {
              if (doSmth != null) doSmth();
              Navigator.of(context).pop(usecase.routes?.$1());
            },
          ),
          ListTile(
            leading: Icon(usecase.icon2),
            title: Text(usecase.option2),
            onTap: () {
              if (doSmth1 != null) doSmth1();
              Navigator.of(context).pop(usecase.routes?.$2());
            },
          ),
        ],
      );
    },
  );
}

enum DialogUseCases {
  create(
    icon1: Icons.keyboard,
    icon2: Icons.check_box,
    title: 'Create',
    option1: 'Add note',
    option2: 'Add to-do',
    routes: (AddOrEditNotePage.route, AddOrEditTODOPage.route),
  ),
  import(
    icon1: Icons.camera_alt,
    icon2: Icons.photo_library,
    title: 'Import',
    option1: 'Take photo',
    option2: 'Choose from gallery',
  );

  final IconData icon1;
  final IconData icon2;
  final String title;
  final String option1;
  final String option2;
  final (Function, Function)? routes;

  const DialogUseCases({
    required this.icon1,
    required this.icon2,
    required this.title,
    required this.option1,
    required this.option2,
    this.routes,
  });
}
