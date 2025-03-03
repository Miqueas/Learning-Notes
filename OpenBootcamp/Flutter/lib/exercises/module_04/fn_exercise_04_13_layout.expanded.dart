part of 'fn_exercise_04_13_layout.dart';

final class FnExpandedLayout extends StatelessWidget {
  const FnExpandedLayout({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: Scaffold(
    appBar: AppBar(title: const Text("Expanded")),
    body: Row(children: [
      Expanded(child: Container(
        color: Colors.black,
        child: const Center(child: Text("A", style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),),
      ),),
      Expanded(child: Container(
        color: Colors.deepPurple,
        child: const Center(child: Text("B", style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),),
      ),),
      Expanded(child: Container(
        color: Colors.deepOrange,
        child: const Center(child: Text("C", style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),),
      ),),
    ],),
  ),);
}