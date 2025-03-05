part of 'fn_exercise_06_05_navigation.dart';

final class FnExercise0605Screen1 extends StatelessWidget {
  const FnExercise0605Screen1({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Screen 1"),),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("Screen 1", 
            style: TextStyle(fontWeight: FontWeight.bold,),
          ),
        ),),
        Center(child: FilledButton(
          onPressed: () => Navigator.pop(context),
          child: const Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Go back"),
              ),
            ],
          )
        ),),
      ],
    ),
  );
}