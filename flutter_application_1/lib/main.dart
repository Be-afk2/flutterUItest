import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_Funtions_screen.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

// Este es el punto de entrada de la app

class MyApp extends StatelessWidget {
  //super.key es una propiedad que se le pasa al constructor de la clase padre para que
  // pueda identificar el widget de forma unica, es una buena practica usarlo
  const MyApp({super.key});

  // este widget es el que se encarga de crear la app

  @override
  Widget build(BuildContext context) {
    // basicamente esta es la app
    return MaterialApp(
      //permite quitar la etiqueta de debug en la parte superior derecha
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 3, 83, 27),
        // primarySwatch: Colors.blue,
      ),
      home: CounterFuntionsScreen(),
    );
  }
}

class MyHomePage {}
