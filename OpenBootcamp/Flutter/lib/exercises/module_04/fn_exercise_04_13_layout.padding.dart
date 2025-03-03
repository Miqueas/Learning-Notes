part of 'fn_exercise_04_13_layout.dart';

final class FnPaddingLayout extends StatelessWidget {
  const FnPaddingLayout({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: Scaffold(
    appBar: AppBar(title: const Text("Padding")),
    body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          color: Colors.amber,
          child: const Text("A", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            padding: const EdgeInsets.all(40),
            color: Colors.red,
            child: const Text("B", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ],
    ),),
  ),);
}