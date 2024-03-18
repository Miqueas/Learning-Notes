import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StatefulWidget"),
          actions: const [
            MyLikeButton(),
          ],
        )
      ),
    );
  }
}

class MyLikeButton extends StatefulWidget {
  const MyLikeButton({super.key});

  @override
  State<MyLikeButton> createState() => _MyLikeButtonState();
}

class _MyLikeButtonState extends State<MyLikeButton> {
  var likedIcon = const Icon(Icons.favorite_border);
  var liked = false;

  void doLike() {
    setState(() {
      liked = !liked;
      likedIcon = Icon((liked) ? Icons.favorite : Icons.favorite_border);
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: doLike, icon: likedIcon);
  }
}