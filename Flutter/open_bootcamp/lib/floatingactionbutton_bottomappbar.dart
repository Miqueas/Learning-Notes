import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scaffold & AppBar",
      home: MyHomePage(title: "FloatingActionButton & BottomAppBar"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title}) : super();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon likedIcon = const Icon(Icons.favorite_border);
  bool liked = false;

  void _doLike() {
    setState(() {
      liked = !liked;
      likedIcon = Icon((liked) ? Icons.favorite : Icons.favorite_border);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: _doLike, icon: likedIcon)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _doLike,
        icon: likedIcon,
        label: const Text("Like"),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.explore),
            Icon(Icons.add),
            Icon(Icons.inbox),
            Icon(Icons.account_circle)
          ]
        ),
      ),
    );
  }
}