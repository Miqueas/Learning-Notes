import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class FnExercise0411Fonts extends StatelessWidget {
  const FnExercise0411Fonts({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Normal text"),
      const Text("Stylized text", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 24,
      ),),
      const Text("Text with a custom font", style: TextStyle(
        fontFamily: "Yellowtail",
        fontSize: 24,
      ),),
      Text("Text with a Google font (network)", style: GoogleFonts.ubuntuCondensed(),),
    ],
  ),);
}