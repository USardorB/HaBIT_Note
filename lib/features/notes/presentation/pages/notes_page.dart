import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_note/core/const/asset_consts.dart';
import 'package:habit_note/core/dialogs/generic_dialog.dart';
import 'package:habit_note/core/extensions/build_context.dart';

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
        child: const Icon(Icons.add, size: 48),
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
}
