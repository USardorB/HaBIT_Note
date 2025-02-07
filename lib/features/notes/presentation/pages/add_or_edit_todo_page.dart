import 'package:flutter/material.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/presentation/widgets/color_plate_bottom_sheet.dart';

class AddOrEditTODOPage extends StatefulWidget {
  const AddOrEditTODOPage({super.key});

  @override
  State<AddOrEditTODOPage> createState() => _AddOrEditTODOPageState();
}

class _AddOrEditTODOPageState extends State<AddOrEditTODOPage> {
  late final TextEditingController _todo;
  late List<TaskModel> _allTodos;
  @override
  void initState() {
    // ignore: prefer_const_constructors
    // _allTodos = TodosModel().todos;
    _todo = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _todo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.addTodo), actions: _actions(context)),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      //   child: Column(children: [
      //     TextField(
      //       style: TextTheme.of(context).bodyLarge,
      //       controller: _todo,
      //       onSubmitted: (value) {
      //         _allTodos.todos.add(TodoModel());
      //         _todo.clear();
      //         setState(() {});
      //       },
      //       decoration: InputDecoration(
      //         prefixIcon: const Icon(Icons.add),
      //         hintText: Strings.typeSomething,
      //         hintStyle: TextTheme.of(context).bodyLarge,
      //         border: InputBorder.none,
      //         focusedBorder: InputBorder.none,
      //         errorBorder: InputBorder.none,
      //         enabledBorder: InputBorder.none,
      //       ),
      //     ),
      //     ...List.generate(_allTodos.todos.length, (index) {
      //       return ListTile(
      //         leading: Checkbox(
      //           value: _allTodos.todos.elementAt(index).isCompleted,
      //           onChanged: (value) => setState(() {
      //             _allTodos.todos[index].copyWith(isCompleted: value);
      //           }),
      //         ),
      //         title: Text(_allTodos.todos[index].task),
      //       );
      //     })
      //   ]),
      // ),
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
