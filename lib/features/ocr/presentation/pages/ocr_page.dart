import 'package:flutter/material.dart';
import 'package:habit_note/core/dialogs/generic_dialog.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:image_picker/image_picker.dart';

class OCRPage extends StatefulWidget {
  const OCRPage({super.key});

  @override
  State<OCRPage> createState() => _OCRPageState();
}

class _OCRPageState extends State<OCRPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() => _image = pickedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image to Text'),
        backgroundColor: ColorScheme.of(context).surfaceContainerLow,
        actions: _actions(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayGenericDialog(
            context,
            usecase: DialogUseCases.import,
            doSmth: () => _pickImage(ImageSource.gallery),
            doSmth1: () => _pickImage(ImageSource.camera),
          ).then(
            // ignore: use_build_context_synchronously
            (route) => context.push(route),
          );
        },
        backgroundColor: ColorScheme.of(context).primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 48),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  _image == null
                      ? 'Click the “Scan Image” button to perform scan'
                      : 'something',
                ),
              ),
            ),
            const Spacer(flex: 1),
            _buttons(context),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Row _buttons(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            setState(() => _image = null);
          },
          child: Text(
            'Clear Image',
            style: TextTheme.of(context).bodySmall,
          ),
        ),
        const Spacer(),
        FilledButton(
          onPressed: () {},
          child: Text(
            'Clear Image',
            style: TextTheme.of(context)
                .bodySmall!
                .copyWith(color: ColorScheme.of(context).onPrimary),
          ),
        ),
        const Spacer(flex: 6),
      ],
    );
  }

  List<Widget> _actions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        color: ColorScheme.of(context).outline,
        icon: const Icon(Icons.copy),
      ),
    ];
  }
}
