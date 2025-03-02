import "package:flutter/material.dart";
import "package:gap/gap.dart";

const imageURL = "https://www.andreasnesheim.no/wp-content/uploads/2019/05/logo_flutter_1080px_clr.png";

final class FnExercise0410Images extends StatelessWidget {
  const FnExercise0410Images({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(mainAxisSize: MainAxisSize.min, children: [
        const Text("Image from assets:"),
        Image.asset("assets/images/flutter-logo.webp", width: 200),
      ],),
      const Gap(8),
      Column(mainAxisSize: MainAxisSize.min, children: [
        const Text("Image from network:"),
        Image.network(imageURL, width: 150),
      ],)
    ]
  ),);
}