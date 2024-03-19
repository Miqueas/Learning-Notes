import "package:flutter/material.dart";
import "dart:async";

void main() => runApp(const App());

class CountController {
  var _count = 0;
  final _streamController = StreamController<int>();

  Sink<int> get sink => _streamController.sink;
  Stream<int> get stream => _streamController.stream;

  void doIncrement() {
    sink.add(++_count);
  }

  void dispose() => _streamController.close();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("StreamController")),
        body: const Center(
          child: Home()
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final countController = CountController();

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