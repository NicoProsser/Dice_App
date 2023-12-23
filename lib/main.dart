import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Colors.red,
          Colors.blue,
          Colors.green
        ]), // GradientContainer.red_blue(),
      ),
    ),
  );
}
