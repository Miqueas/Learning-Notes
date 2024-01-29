import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter OpenBootcamp",
      home: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.amber,
              child: const Text("A"),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              width: 60,
              child: const Text("B"),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.circle,
              ),
              child: const Text("C"),
            ),
          ],
        ),
      ),
    );
  }
}