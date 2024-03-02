import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("InkWell")),
        body: const Material(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TaskListView(),
          ),
        ),
      ),
    );
  }
}

class TaskListView extends StatefulWidget {
  const TaskListView({super.key});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}


class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Tap me"),
          ),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tapped")));
          }
        ),
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Double tap me"),
          ),
          onDoubleTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Double tapped")));
          }
        ),
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Long press me"),
          ),
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Long pressed")));
          }
        ),
      ],
    );
  }
}