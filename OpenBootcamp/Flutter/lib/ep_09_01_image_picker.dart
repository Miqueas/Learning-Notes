import "dart:typed_data";

import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Home()
      )
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _image = Uint8List(0);

  void doGetImage(ImageSource source) {
    final picker = ImagePicker();
    picker.pickImage(source: source).then((value) {
      if (value != null) {
        value.readAsBytes().then((value) {
          setState(() {
            _image = value;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Camera")),
      body: Center(
        child: Image.memory(_image),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            icon: const Icon(Icons.image_search),
            label: const Text("Open gallery"),
            onPressed: () { doGetImage(ImageSource.gallery); },
          ),
          const SizedBox(height: 20),
          FloatingActionButton.extended(
            icon: const Icon(Icons.camera_alt),
            label: const Text("Open camera"),
            onPressed: () { doGetImage(ImageSource.camera); },
          )
        ]
      ),
    );
  }
}