import "package:flutter/material.dart";
import "dart:async";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyCountController {
  var _count = 0;
  final _streamController = StreamController<int>();

  Sink<int> get sink => _streamController.sink;
  Stream<int> get stream => _streamController.stream;

  void doIncrement() {
    sink.add(++_count);
  }

  void dispose() => _streamController.close();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _countController = MyCountController();

  @override
  void dispose() {
    _countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _countController.stream,
      initialData: 0,
      builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${snapshot.data}"),
            IconButton.filled(
              onPressed: _countController.doIncrement,
              icon: const Icon(Icons.add),
            )
          ],
        );
      },
    );
  }
}