import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.textString, {super.key});

  final String textString;

  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    );
  }
}
