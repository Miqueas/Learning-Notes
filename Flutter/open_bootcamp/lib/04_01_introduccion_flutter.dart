// En Flutter tenemos 2 set de "estilos" principales: Material (Android) y Cupertino (iOS).
// Siempre que vamos a desarrollar una app con Flutter debemos elegir entre estos dos estilos.
// No son los únicos que hay, pero son los principales, los desarrolla y mantiene Google y estan
// pensados para apps móviles.
import 'package:flutter/material.dart';

// Cabde destacar que en el curso, el instructor hizo algo un poco más elaborado, pero yo no lo hice
// igual porque bueno, se supone que es el capítulo introductorio.

void main() {
  // Toda app Flutter empieza aquí, llamamos a la función `runApp()` para iniciar la aplicación.
  // Esta función toma como argumento un `Widget`, puede ser cualquiera y debido a que en Flutter
  // todo es un widget, es irrelevante si el widget es o no una clase "App". Honestamente, eso de
  // todo sea un widget no me termina de gustar y más adelante veremos porqué.
  runApp(const MainApp());
}

// En Flutter, podemos decir que todos los widgets están separados en 2 tipos: con y sin estado.
// Los widgets con estados son widgets que, eventualmente, cambiarán "algo", por ejemplo: una lista
// de elementos que se llena luego de presionar un botón que hace una petición a un servidor.
// Y los widgets con estados serían pues, lo contrario, nunca cambian, como por ejemplo algún ícono
// o botón estático o algo. En este caso, la clase `MainApp` es un widget "stateless" (sin estado)
// precisamente por el motivo de que no va a cambiar.
class MainApp extends StatelessWidget {
  // Aún no sé para qué es el argumento `key`, supongo que eventualmente lo dirán en el curso, pero
  // el instructor mencionó que era alguna especie de valor como para que Flutter rastree el widget
  // o algo así.
  const MainApp({super.key});

  // `build` es un método que veremos en todo widget custom, el instructor no dió detalles al respec
  // to, pero en general aquí es donde se construye siempre la interfaz según el widget que estemos
  // creando (o al menos eso creo).
  @override
  Widget build(BuildContext context) {
    // En Flutter es común usar `const` para instanciar widgets debido a que Flutter/Dart (no estoy
    // seguro cuál de los dos) hace algunas optimizaciones. `MaterialApp` crea una app de tipo "mate
    // rial", la cuál básicamente provee de ciertos argumentos a modo de "plantilla" que se ajusta
    // con lo que se vería con una app de Android común.
    return const MaterialApp(
      // Como mencionaba antes, todo en Flutter es un widget, por lo que si queremos centrar algo,
      // efectivamente, usamos el widget `Center`.
      home: Center(
        // De nuevo, lo mismo, pero con texto
        child: Text('Hello World!')
      )
    );
  }
}
