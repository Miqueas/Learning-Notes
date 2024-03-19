import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("SimpleDialog")),
        body: const Center(
          child: MySimpleDialog()
        )
      ),
    );
  }
}

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({super.key});

  @override
  State<MySimpleDialog> createState() => _MySimpleDialogState();
}

class _MySimpleDialogState extends State<MySimpleDialog> {
  var _icon = Icons.home;

  Future<void> _doCreateSimpleDialog() async {
    var dialogResult = await showDialog<int>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title: const Text("SimpleDialog"),
        children: [
          SimpleDialogOption(
            onPressed: () { Navigator.pop<int>(context, 1); },
            child: const Row(children: [ Icon(Icons.home), Text("Home") ]),
          ),
          SimpleDialogOption(
            onPressed: () { Navigator.pop<int>(context, 2); },
            child: const Row(children: [ Icon(Icons.explore), Text("Explore") ]),
          ),
          SimpleDialogOption(
            onPressed: () { Navigator.pop<int>(context, 3); },
            child: const Row(children: [ Icon(Icons.camera), Text("Camera") ]),
          ),
          SimpleDialogOption(
            onPressed: () { Navigator.pop<int>(context, 4); },
            child: const Row(children: [ Icon(Icons.favorite), Text("Favorite") ]),
          ),
        ],
      ),
    );

    switch (dialogResult) {
      case 1: setState(() { _icon = Icons.home; }); break;
      case 2: setState(() { _icon = Icons.explore; }); break;
      case 3: setState(() { _icon = Icons.camera; }); break;
      case 4: setState(() { _icon = Icons.favorite; }); break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(_icon),
        ElevatedButton(
          onPressed: _doCreateSimpleDialog,
          child: const Text("Cambiar ícono"),
        )
      ],
    );
  }
}