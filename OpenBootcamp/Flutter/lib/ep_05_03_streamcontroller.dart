import "package:flutter/material.dart";
import "dart:async";

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("StreamController")),
        body: const Center(
          child: MyHome()
        ),
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
  final countController = MyCountController();

  @override
  void dispose() {
    countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: countController.stream,
      initialData: 0,
      builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${snapshot.data}"),
            IconButton.filled(
              onPressed: countController.doIncrement,
              icon: const Icon(Icons.add),
            )
          ],
        );
      },
    );
  }
}