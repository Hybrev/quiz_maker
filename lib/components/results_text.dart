import 'package:flutter/material.dart';

class ResultsText extends StatelessWidget {
  const ResultsText(this.input, this.fontSize, this.color, this.weight, {super.key});
  final String input;
  final double fontSize;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}