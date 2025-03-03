import 'package:flutter/material.dart';

final class FnExercise0412Alignment extends StatelessWidget {
  const FnExercise0412Alignment({ super.key });

  @override
  Widget build(BuildContext context) => const Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('start', style: TextStyle(
          color: Colors.amber,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(Icons.android, color: Colors.amber,),
          Icon(Icons.android, color: Colors.amber,),
          Icon(Icons.android, color: Colors.amber,),
          Icon(Icons.android, color: Colors.amber,),
        ],),
      ],),
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('end', style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Icon(Icons.android, color: Colors.deepOrange,),
          Icon(Icons.android, color: Colors.deepOrange,),
          Icon(Icons.android, color: Colors.deepOrange,),
          Icon(Icons.android, color: Colors.deepOrange,),
        ],),
      ],),
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('center', style: TextStyle(
          color: Colors.green,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.android, color: Colors.green,),
          Icon(Icons.android, color: Colors.green,),
          Icon(Icons.android, color: Colors.green,),
          Icon(Icons.android, color: Colors.green,),
        ],),
      ],),
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('spaceEvenly', style: TextStyle(
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.android, color: Colors.blue,),
          Icon(Icons.android, color: Colors.blue,),
          Icon(Icons.android, color: Colors.blue,),
          Icon(Icons.android, color: Colors.blue,),
        ],),
      ],),
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('spaceBetween', style: TextStyle(
          color: Colors.purple,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(Icons.android, color: Colors.purple,),
          Icon(Icons.android, color: Colors.purple,),
          Icon(Icons.android, color: Colors.purple,),
          Icon(Icons.android, color: Colors.purple,),
        ],),
      ],),
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('spaceAround', style: TextStyle(
          color: Colors.pink,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Icon(Icons.android, color: Colors.pink,),
          Icon(Icons.android, color: Colors.pink,),
          Icon(Icons.android, color: Colors.pink,),
          Icon(Icons.android, color: Colors.pink,),
        ],),
      ],),
    ],
  );
}