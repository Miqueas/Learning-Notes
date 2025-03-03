part of 'fn_exercise_04_13_layout.dart';

final class FnDividerLayout extends StatelessWidget {
  const FnDividerLayout({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: Scaffold(
    appBar: AppBar(title: const Text("Divider")),
    body: Column(children: [
      Expanded(child: Container(
        color: Colors.black,
        child: const Center(child: Text("A",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white
          ),
        ),),
      ),),
      const Divider(thickness: 2, height: 40, indent: 40, endIndent: 40,),
      Expanded(child: Container(
        color: Colors.deepPurple,
        child: const Center(child: Text("B", style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),),
      ),),
      const Divider(thickness: 2, height: 40, indent: 40, endIndent: 40,),
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