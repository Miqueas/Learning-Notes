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
        appBar: AppBar(title: const Text("ListView")),
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
              onPressed: () => setState(() => _tasks.removeWhere((task) => !task.done))
            )
          ]
        ),
        Expanded(
          child: ListView.builder(
            itemCount: remaining.length,
            itemBuilder: (context, index) => Dismissible(
              key: remaining[index].id,
              background: Container(
                color: Colors.green,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.check, color: Colors.white),
                    ),
                    Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Delete",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.delete_forever, color: Colors.white),
                    ),
                  ]
                ),
              ),
              onDismissed: (direction) {
                switch (direction) {
                  case DismissDirection.startToEnd:
                    final taskIndex = _tasks.indexWhere((task) => task.id == remaining[index].id);
                
                    setState(() => _tasks[taskIndex].done = true);
                    break;
                  case DismissDirection.endToStart:
                    setState(() {
                      _tasks.removeWhere((element) => element.id == remaining[index].id);
                    });
                    break;
                  default:
                }
              },
              child: Card(
                child: ListTile(
                  title: Text(remaining[index].description),
                  leading: Checkbox(
                    value: remaining[index].done,
                    onChanged: (value) {
                      final taskIndex = _tasks.indexWhere((task) => task.id == remaining[index].id);
                
                      setState(() => _tasks[taskIndex].done = value ?? false);
                    },
                  ),
                ),
              ),
            ),
          )
        ),
        Row(
          children: [
            const Text("Done", style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            TextButton(
              child: const Text("Clear completed tasks"),
              onPressed: () => setState(() => _tasks.removeWhere((task) => task.done))
            )
          ]
        ),
        Expanded(
          child: ListView.builder(
            itemCount: completed.length,
            itemBuilder: (context, index) => Dismissible(
              key: completed[index].id,
              background: Container(
                color: Colors.green,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.undo, color: Colors.white),
                    ),
                    Text("Undo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Delete",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.delete_forever, color: Colors.white),
                    ),
                  ]
                ),
              ),
              onDismissed: (direction) {
                switch (direction) {
                  case DismissDirection.startToEnd:
                    final taskIndex = _tasks.indexWhere((task) => task.id == completed[index].id);
                
                    setState(() => _tasks[taskIndex].done = false);
                    break;
                  case DismissDirection.endToStart:
                    setState(() {
                      _tasks.removeWhere((element) => element.id == completed[index].id);
                    });
                    break;
                  default:
                }
              },
              child: Card(
                child: ListTile(
                  title: Text(completed[index].description),
                  leading: Checkbox(
                    value: completed[index].done,
                    onChanged: (value) {
                      final taskIndex = _tasks.indexWhere((task) => task.id == completed[index].id);

                      setState(() => _tasks[taskIndex].done = value ?? false);
                    },
                  ),
                ),
              ),
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

            if (value != "") {
              setState(() => _tasks.add(Task(value)));
            }
          },
        )
      ],
    );
  }
}