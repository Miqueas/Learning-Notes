import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stepper")),
        body: const Steps(),
      ),
    );
  }
}

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
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