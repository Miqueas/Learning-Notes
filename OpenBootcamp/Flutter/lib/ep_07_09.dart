import "package:flutter/material.dart";

void main() => runApp(const App());

class Task {
  Key id;
  bool done = false;
  String description;

  Task(this.description) : id = ValueKey(description);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Checkbox")),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: TaskListView(),
        )
      )
    );
  }
}

class TaskListView extends StatefulWidget {
  const TaskListView({super.key});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}


class _TaskListViewState extends State<TaskListView> {
  final _controller = TextEditingController();
  final _tasks = <Task>[];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final completed = _tasks.where((task) => task.done == true).toList();
    final remaining = _tasks.where((task) => task.done == false).toList();

    return Column(
      children: [
        Row(
          children: [
            const Text("Pending", style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            TextButton(
              child: const Text("Clear pending tasks"),
              onPressed: () => setState(() => _tasks.removeWhere((task) => task.done == false))
            )
          ]
        ),
        Expanded(
          child: ListView.builder(
            itemCount: remaining.length,
            itemBuilder: (context, index) => Row(
              children: [
                Checkbox(
                  value: remaining[index].done,
                  onChanged: (value) {
                    setState(() => remaining[index].done = value ?? false);
                  },
                ),
                Text(remaining[index].description),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.delete_forever),
                  onPressed: () => setState(() => _tasks.removeWhere((element) => element.id == remaining[index].id))
                )
              ]
            ),
          )
        ),
        Row(
          children: [
            const Text("Done", style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            TextButton(
              child: const Text("Clear completed tasks"),
              onPressed: () => setState(() => _tasks.removeWhere((task) => task.done == true))
            )
          ]
        ),
        Expanded(
          child: ListView.builder(
            itemCount: completed.length,
            itemBuilder: (context, index) => Row(
              children: [
                Checkbox(
                  value: completed[index].done,
                  onChanged: (value) {
                    setState(() => completed[index].done = value ?? false);
                  },
                ),
                Text(completed[index].description),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.delete_forever),
                  onPressed: () => setState(() => _tasks.removeWhere((element) => element.id == completed[index].id))
                )
              ]
            ),
          )
        ),
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter a new task"
          ),
          onSubmitted: (value) {
            _controller.clear();
            setState(() => _tasks.add(Task(value)));
          },
        )
      ],
    );
  }
}