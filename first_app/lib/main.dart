import 'package:flutter/material.dart';
import 'gradient_container.dart';

// main is the entry point of the application
void main() {
  // runApp is a function that takes a widget and runs it
  runApp(MaterialApp( // MaterialApp is a widget that is the root of the application
    home: Scaffold( // Scaffold is a widget that provides a scaffold for the application
      body: GradientContainer(colors: [ // GradientContainer is a widget that provides a gradient container for the application
        Color.fromARGB(255, 78, 13, 151),
        Color.fromARGB(255, 107, 15, 151),
      ]),
    ),
  ));
}

