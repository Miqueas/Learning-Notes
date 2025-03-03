import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:format/format.dart';
import 'dart:io';

import 'package:gap/gap.dart';

final class FnExercise0406Platform extends StatelessWidget {
  const FnExercise0406Platform({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Platform.operatingSystem: ${Platform.operatingSystem}",
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const Gap(8),
      const Expanded(child: Row(children: [
        Expanded(child: FnMaterialApp(),),
        Expanded(child: FnCupertinoApp(),),
      ],),),
      const Gap(8),
      Row(children: [
        Expanded(child: Center(child: Text(
          'Running on Anroid? {}'.format(Platform.isAndroid ? 'Yes' : 'No'),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),),),
        Expanded(child: Center(child: Text(
          'Running on iOS? {}'.format(Platform.isIOS ? 'Yes' : 'No'),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),),),
      ],),
      const Gap(8),
    ],
  );
}

final class FnMaterialApp extends StatefulWidget {
  const FnMaterialApp({super.key});

  @override
  State<FnMaterialApp> createState() => _FnMaterialAppState();
}

final class _FnMaterialAppState extends State<FnMaterialApp> {
  var _liked = true;
  var _icon = Icons.favorite_rounded;

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text("Material App"),),
      body: Builder(builder: (context) => Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton.filledTonal(
            icon: Icon(_icon),
            color: switch (_liked) {
              true => Theme.of(context).colorScheme.primary,
              false => null,
            },
            onPressed: () => setState(() {
              _liked = !_liked;
              _icon = switch (_liked) {
                true => Icons.favorite_rounded,
                false => Icons.favorite_border_rounded,
              };
            }),
          ),
        ],
      ),),),
    ),
  );
}

final class FnCupertinoApp extends StatefulWidget {
  const FnCupertinoApp({super.key});

  @override
  State<FnCupertinoApp> createState() => _FnCupertinoAppState();
}

final class _FnCupertinoAppState extends State<FnCupertinoApp> {
  var _liked = true;
  var _icon = CupertinoIcons.heart_fill;

  @override
  Widget build(BuildContext context) => CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Center(child: Text("Cupertino App")),
      ),
      child: Builder(builder: (context) => Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton.tinted(
            padding: EdgeInsets.zero,
            child: Icon(_icon),
            onPressed: () => setState(() {
              _liked = !_liked;
              _icon = switch (_liked) {
                true => CupertinoIcons.heart_fill,
                false => CupertinoIcons.heart,
              };
            }),
          ),
        ],
      ),),),
    ),
  );
}