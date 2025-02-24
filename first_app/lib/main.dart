import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(colors: [
        Color.fromARGB(255, 78, 13, 151),
        Color.fromARGB(255, 107, 15, 151),
      ]),
    ),
  ));
}

