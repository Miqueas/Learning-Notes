import "package:flutter/material.dart";
import "package:flutter/scheduler.dart";

final class FnExercise0404Drawer extends StatefulWidget {
  const FnExercise0404Drawer({super.key});

  @override
  State<FnExercise0404Drawer> createState() => _FnExercise0404DrawerState();
}

final class _FnExercise0404DrawerState extends State<FnExercise0404Drawer> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _scaffoldKey.currentState?.openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Title"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const Drawer(child: Column(children: [
        DrawerHeader(child: Text("Menu"),),
        Text("Item 1"),
        Text("Item 2"),
        Text("Item 3"),
        Text("Item 4"),
        Text("Item 5"),
        Text("Item 6"),
      ],),),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text("New"),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Account",
        ),
      ],),
    ),
  );
}