import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() => runApp(const App());

class CountProvider extends ChangeNotifier {
  int count = 0;

  CountProvider(count);

  void doIncrement() {
    ++count;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Provider")),
        body: ChangeNotifierProvider(
          create: (_) => CountProvider(0),
          child: const Center(
            child: Home()
          ),
        )
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);

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