import 'package:flutter/material.dart';
import 'package:habit_note/features/notes/domain/entities/note.dart';
import 'package:habit_note/features/notes/presentation/widgets/color_plate_bottom_sheet.dart';

class AddOrEditNotePage extends StatefulWidget {
  static Route route([Note? note]) => MaterialPageRoute(
        builder: (context) => AddOrEditNotePage(note: note),
      );

  final Note? note;
  const AddOrEditNotePage({super.key, this.note});

  @override
  State<AddOrEditNotePage> createState() => _AddOrEditNotePageState();
}

class _AddOrEditNotePageState extends State<AddOrEditNotePage> {
  late final TextEditingController _title;
  late final TextEditingController _description;
  @override
  void initState() {
    _title = TextEditingController();
    _description = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Note'), actions: _actions(context)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(children: [
          TextField(
            style: TextTheme.of(context).titleSmall,
            controller: _title,
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: TextTheme.of(context).titleMedium,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
          TextField(
            maxLines: 15,
            controller: _description,
            decoration: InputDecoration(
              hintText: 'Type something...',
              hintStyle: TextTheme.of(context).bodyLarge,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ]),
      ),
    );
  }

  List<Widget> _actions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => const ColorPlateBottomSheet(),
        ),
        icon: const Icon(Icons.more_vert),
      ),
    ];
  }
}
