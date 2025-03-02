import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

final class FnExercise0409Icons extends StatelessWidget {
  const FnExercise0409Icons({super.key});

  @override
  Widget build(BuildContext context) => const Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Material"),
        Gap(8),
        Icon(Icons.home)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Cupertino"),
        Gap(8),
        Icon(CupertinoIcons.home)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Font Awesome"),
        Gap(8),
        FaIcon(FontAwesomeIcons.house)
      ],),
    ],
  ),);
}