import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: MyStepper(),
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
  var _currentStep = 0;

  void doNextStep() {
    setState(() {
      if (_currentStep == 5) return;
      _currentStep++;
    });
  }

  void doCancelStep() {
    setState(() {
      if (_currentStep == 0) return;
      _currentStep--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
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