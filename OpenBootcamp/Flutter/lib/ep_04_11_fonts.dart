import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Fonts")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Texto sin estilo"),
              const Text("Texto con estilo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                ),
              ),
              const Text("Texto con fuente personalizada",
                style: TextStyle(
                  fontFamily: "Yellowtail",
                  fontSize: 24,
                )
              ),
              Text("Texto con Google Fonts",
                style: GoogleFonts.ubuntuCondensed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}