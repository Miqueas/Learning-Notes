import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Home(),
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
  String _input = "";
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
        title: const Text("TextEditingController"),
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
                onChanged: (value) {
                  setState(() {
                    _input = value;
                  });
                },
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