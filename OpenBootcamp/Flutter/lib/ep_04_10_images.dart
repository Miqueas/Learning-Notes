import "package:flutter/material.dart";

const imageURL = "https://www.andreasnesheim.no/wp-content/uploads/2019/05/logo_flutter_1080px_clr.png";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Images")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Image from asset:"),
              Image.asset("assets/images/flutter-logo.webp", width: 200),
              const Text("Image from url:"),
              Image.network(imageURL, width: 150),
            ]
          ),
        ),
      )
    );
  }
}