import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _input = "(algo)";
  final _textFieldController = TextEditingController();

  void _doChangeSate() {
    setState(() {
      _input = _textFieldController.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _textFieldController.addListener(_doChangeSate);
    _textFieldController.value = TextEditingValue(text: _input);
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("Escribe algo")),
          Center(
            child: SizedBox(
              width: 220,
              child: TextField(
                controller: _textFieldController,
                onChanged: (value) => _input = value,
              )
            )
          ),
          Center(
            child: Text("\"$_input\""),
          )
        ],
      ),
    );
  }
}