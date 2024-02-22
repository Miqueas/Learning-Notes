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
  final List<String> _todos = [];
  String _todo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: _todos.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        value: false,
                        title: Text(_todos[index]),
                        onChanged: (value) => setState(() {}),
                      );
                    }
                  )
                ),
                TextField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.add),
                    border: OutlineInputBorder(),
                    labelText: "Agrega una nueva tarea...",
                    hintText: "Qué tienes pendiente por hacer?",
                  ),
                  onSubmitted: (value) => setState(() {
                    _todos.add(value);
                  }),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}