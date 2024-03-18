import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stepper")),
        body: const MyStepper(),
      ),
    );
  }
}

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  var currentStep = 0;

  void doNextStep() {
    setState(() {
      if (currentStep == 5) return;
      currentStep++;
    });
  }

  void doCancelStep() {
    setState(() {
      if (currentStep == 0) return;
      currentStep--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: currentStep,
      onStepContinue: doNextStep,
      onStepCancel: doCancelStep,
      steps: const [
        Step(title: Text("Paso 1"), content: Text("Contenido 1")),
        Step(title: Text("Paso 2"), content: Text("Contenido 2")),
        Step(title: Text("Paso 3"), content: Text("Contenido 3")),
        Step(title: Text("Paso 4"), content: Text("Contenido 4")),
        Step(title: Text("Paso 5"), content: Text("Contenido 5")),
        Step(title: Text("Paso 6"), content: Text("Contenido 6")),
      ],
    );
  }
}