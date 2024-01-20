import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
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

  void _doLike() {
    setState(() {
      liked = !liked;
      likedIcon = Icon((liked) ? Icons.favorite : Icons.favorite_border);
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: _doLike, icon: likedIcon);
  }
}