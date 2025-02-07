import 'package:flutter/material.dart';

Future<Route?> displayGenericDialog<Route>(
  BuildContext context, {
  DialogUseCases usecase = DialogUseCases.create,
  Future<void> Function()? act1,
  Future<void> Function()? act2,
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
              if (act1 != null) act1();
              Navigator.of(context).pop(0);
            },
          ),
          ListTile(
            leading: Icon(usecase.icon2),
            title: Text(usecase.option2),
            onTap: () {
              if (act2 != null) act2();
              Navigator.of(context).pop(1);
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

  const DialogUseCases({
    required this.icon1,
    required this.icon2,
    required this.title,
    required this.option1,
    required this.option2,
  });
}
