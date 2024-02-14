import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyLayout());

class MyCenter extends StatelessWidget {
  const MyCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: Center(
          child: Text("Widget centrado"),
        ),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
          ],
        ),
      ),
    );
  }
}