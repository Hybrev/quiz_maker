import 'package:flutter/material.dart';
import 'package:quiz_maker/components/results_text.dart';

class NumberedCircle extends StatelessWidget {
  const NumberedCircle(this.dataIndex, this.correctAnswer, {super.key});

  final String dataIndex;
  final bool correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: correctAnswer
              ? const Color.fromARGB(255, 206, 187, 22)
              : const Color.fromARGB(255, 50, 184, 247),
              borderRadius: BorderRadius.circular(100)),
      child: ResultsText(dataIndex, 12, Colors.white, FontWeight.normal),
    );
  }
}
