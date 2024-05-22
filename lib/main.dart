import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 0, 255, 123),
          Color.fromARGB(255, 147, 107, 248)
        ]),
      ),
    ),
  );
}
