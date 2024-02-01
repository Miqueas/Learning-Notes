import "package:flutter/material.dart";
import "package:provider/provider.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyCountProvider extends ChangeNotifier {
  int count = 0;

  MyCountProvider(count);

  void doIncrement() {
    ++count;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: ChangeNotifierProvider(
          create: (_) => MyCountProvider(0),
          child: const MyHome(),
        )
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyCountProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${countProvider.count}"),
        IconButton.filled(
          onPressed: countProvider.doIncrement,
          icon: const Icon(Icons.add)
        )
      ],
    );
  }
}