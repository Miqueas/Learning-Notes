import "package:flutter/material.dart";

final class FnExercise0407Buttons extends StatelessWidget {
  const FnExercise0407Buttons({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        actions: [
          const Text("IconButton"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_android)),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () {}, child: const Text("Elevated"))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FilledButton(onPressed: () {}, child: const Text("Filled"))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FilledButton.tonal(onPressed: () {}, child: const Text("Filled Tonal"))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: OutlinedButton(onPressed: () {}, child: const Text("Outlined"))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(onPressed: () {}, child: const Text("Text"))
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Floating Action Button"),
      ),
    ),
  );
}