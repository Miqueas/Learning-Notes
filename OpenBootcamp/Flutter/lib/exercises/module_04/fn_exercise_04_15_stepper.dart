import 'package:flutter/material.dart';

final class FnExercise0415Stepper extends StatefulWidget {
  const FnExercise0415Stepper({super.key});

  @override
  State<FnExercise0415Stepper> createState() => _FnExercise0415StepperState();
}

final class _FnExercise0415StepperState extends State<FnExercise0415Stepper> {
  var currentStep = 0;

  void doNextStep() => setState(() {
    if (currentStep == 5) return;
    currentStep++;
  });

  void doCancelStep() => setState(() {
    if (currentStep == 0) return;
    currentStep--;
  });

  @override
  Widget build(BuildContext context) => Stepper(
    currentStep: currentStep,
    onStepContinue: doNextStep,
    onStepCancel: doCancelStep,
    steps: const [
      Step(title: Text("Step 1"), content: Text("Content 1")),
      Step(title: Text("Step 2"), content: Text("Content 2")),
      Step(title: Text("Step 3"), content: Text("Content 3")),
      Step(title: Text("Step 4"), content: Text("Content 4")),
      Step(title: Text("Step 5"), content: Text("Content 5")),
      Step(title: Text("Step 6"), content: Text("Content 6")),
    ],
  );
}