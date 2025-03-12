import "dart:io";

import "package:gap/gap.dart";
import "package:image_picker/image_picker.dart";
import "package:flutter/material.dart";
import "dart:typed_data";

final class FnExercise0901ImagePicker extends StatefulWidget {
  const FnExercise0901ImagePicker({super.key});

  @override
  State<FnExercise0901ImagePicker> createState()
    => _FnExercise0901ImagePickerState();
}

final class _FnExercise0901ImagePickerState
extends State<FnExercise0901ImagePicker>
{
  var _image = Uint8List(0);

  void _onPickImage(ImageSource source) async {
    final picker = ImagePicker();
    final result = await picker.pickImage(source: source);

    if (result != null) {
      _image = await result.readAsBytes();
      setState(() {});
    }
  }

  @override
  void dispose() {
    _image = Uint8List(0);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: switch (_image.isEmpty) {
          true => const Center(child: Text('No image selected'),),
          false => Image.memory(_image, fit: BoxFit.cover,),
        },
      ),),
      const Gap(16),
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.icon(
            icon: const Icon(Icons.image_search),
            label: const Text('Open gallery'),
            onPressed: () => _onPickImage(ImageSource.gallery),
          ),
          const Gap(8),
          IconButton.filled(
            icon: const Icon(Icons.delete_forever_rounded),
            onPressed: () => setState(() => _image = Uint8List(0)),
          ),
          const Gap(8),
          FilledButton.icon(
            icon: const Icon(Icons.camera_alt),
            label: const Text('Open camera'),
            onPressed: () {
              if (!(Platform.isAndroid || Platform.isIOS)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(
                    'Camera is not supported on this platform',
                  ),),
                );
                return;
              }
          
              _onPickImage(ImageSource.camera);
            },
          ),
        ],),
      )
    ],
  );
}