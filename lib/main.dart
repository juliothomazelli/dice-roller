import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [
              Color.fromARGB(255, 81, 80, 87),
              Color.fromARGB(255, 45, 7, 98)
            ]
        ),
      ),
    ),
  );
}