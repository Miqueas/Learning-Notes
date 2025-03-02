import "dart:io";
import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

void main() => runApp(!Platform.isIOS ? const MyCupertinoApp() : const MyMaterialApp());

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App"),
          actions: const [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
            ),
          ],
        ),
        body: const Center(child: Text("Material App"))
      ),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Center(child: Text("Cupertino App")),
          trailing: CupertinoButton(child: const Icon(CupertinoIcons.settings), onPressed: () {}),
        ),
        child: const Center(
          child: Text("Cupertino App"),
        ),
      ),
    );
  }
}