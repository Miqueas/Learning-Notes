import "package:flutter/material.dart";

part 'fn_exercise_06_05_navigation.screen_1.dart';
part 'fn_exercise_06_05_navigation.screen_2.dart';
part 'fn_exercise_06_05_navigation.screen_3.dart';

final class FnExercise0605Navigation extends StatelessWidget {
  const FnExercise0605Navigation({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: const FnExercise0605HomeScreen(),
    routes: {
      "page1": (_) => const FnExercise0605Screen1(),
      "page2": (_) => const FnExercise0605Screen2(),
      "page3": (_) => const FnExercise0605Screen3(),
    },
  );
}

final class FnExercise0605HomeScreen extends StatelessWidget {
  const FnExercise0605HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Home"),),
    drawer: Drawer(child: Column(children: [
      MenuItemButton(
        leadingIcon: const Icon(Icons.label),
        onPressed: () => Navigator.pushNamed(context, "page1"),
        child: const Text("Screen 1")
      ),
      MenuItemButton(
        leadingIcon: const Icon(Icons.label),
        onPressed: () => Navigator.pushNamed(context, "page2"),
        child: const Text("Screen 2")
      ),
      MenuItemButton(
        leadingIcon: const Icon(Icons.label),
        onPressed: () => Navigator.pushNamed(context, "page3"),
        child: const Text("Screen 3")
      ),
    ],),),
    body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text("Home", 
          style: TextStyle(fontWeight: FontWeight.bold,),
        ),
      ),
      FilledButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FnExercise0605Screen1(),),
        ),
        child: const Text("Go to screen 1"),
      ),
      Container(padding: const EdgeInsets.only(bottom: 10),),
      FilledButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FnExercise0605Screen2(),),
        ),
        child: const Text("Go to screen 2"),
      ),
      Container(padding: const EdgeInsets.only(bottom: 10),),
      FilledButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FnExercise0605Screen3(),),
        ),
        child: const Text("Go to screen 3"),
      ),
    ],),
  );
}