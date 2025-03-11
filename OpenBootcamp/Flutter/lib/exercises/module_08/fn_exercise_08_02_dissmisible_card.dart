import "package:flutter/material.dart";

final class Task {
  Key id;
  bool done = false;
  String description;

  Task(this.description) : id = UniqueKey();
}

final class FnExercise0802Dissmisible extends StatefulWidget {
  const FnExercise0802Dissmisible({super.key});

  @override
  State<FnExercise0802Dissmisible> createState()
    => _FnExercise0802DissmisibleState();
}


final class _FnExercise0802DissmisibleState
extends State<FnExercise0802Dissmisible>
{
  final _deletedTasks = <Task>[];
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

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(children: [
          const Text('Pending',
            style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          const Spacer(),
          TextButton(
            child: const Text('Clear pending tasks'),
            onPressed: () => setState(() => _tasks.removeWhere(
              (task) => !task.done
            ),),
          ),
        ],),
        Expanded(child: ListView.builder(
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
                  Text('Done',
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
                  Text('Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.delete_forever, color: Colors.white,),
                  ),
                ],
              ),
            ),
            onDismissed: (direction) {
              final taskIndex = _tasks.indexWhere(
                (task) => task.id == remaining[index].id
              );
      
              var thisTask = _tasks[taskIndex];
      
              switch (direction) {
                case DismissDirection.startToEnd:
                  setState(() => thisTask.done = true);
                  break;
                case DismissDirection.endToStart:
                  setState(() {
                    _deletedTasks.add(thisTask);
                    _tasks.remove(thisTask);
                  });
      
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Deleted task "${thisTask.description}"'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        setState(() {
                          _tasks.insert(taskIndex, thisTask);
                          _deletedTasks.remove(thisTask);
                        });
                      }
                    ),
                  ),);
                  break;
                default:
                  break;
              }
            },
            child: Card(child: ListTile(
              title: Text(remaining[index].description,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.pending_actions),
            ),),
          ),
        ),),
        Row(children: [
          const Text('Done', style: TextStyle(fontWeight: FontWeight.bold,),),
          const Spacer(),
          TextButton(
            child: const Text('Clear completed tasks'),
            onPressed: () => setState(() => _tasks.removeWhere(
              (task) => task.done
            ),),
          ),
        ],),
        Expanded(child: ListView.builder(
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
                  Text('Undo',
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
                  Text('Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.delete_forever, color: Colors.white,),
                  ),
                ]
              ),
            ),
            onDismissed: (direction) {
              final taskIndex = _tasks.indexWhere(
                (task) => task.id == completed[index].id
              );
      
              var thisTask = _tasks[taskIndex];
      
              switch (direction) {
                case DismissDirection.startToEnd:
                  setState(() => thisTask.done = false);
                  break;
                case DismissDirection.endToStart:
                  setState(() {
                    _deletedTasks.add(thisTask);
                    _tasks.remove(thisTask);
                  });
      
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Deleted task "${thisTask.description}"'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () => setState(() {
                          _tasks.insert(taskIndex, thisTask);
                          _deletedTasks.remove(thisTask);
                        }),
                      ),
                    )
                  );
                  break;
                default:
                  break;
              }
            },
            child: Card(child: ListTile(
              title: Text(completed[index].description,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.done),
            ),),
          ),
        ),),
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a new task'
          ),
          onSubmitted: (value) {
            _controller.clear();
            if (value != '') setState(() => _tasks.add(Task(value)));
          },
        )
      ],),
    );
  }
}