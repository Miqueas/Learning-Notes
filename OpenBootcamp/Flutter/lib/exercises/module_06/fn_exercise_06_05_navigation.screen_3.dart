part of 'fn_exercise_06_05_navigation.dart';

final class FnExercise0605Screen3 extends StatelessWidget {
  const FnExercise0605Screen3({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Screen 3"),),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("Screen 3", 
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