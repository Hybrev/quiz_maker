import 'package:flutter/material.dart';
import 'package:quiz_maker/components/results_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 15,
                  child: ResultsText(((data['index'] as int) + 1).toString(),
                      12, Colors.white, FontWeight.normal),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResultsText(data['question'].toString(), 14, Colors.white,
                          FontWeight.w500),
                      const SizedBox(height: 5),
                      ResultsText(
                          data['user_answer'].toString(),
                          12,
                          const Color.fromARGB(146, 255, 255, 255),
                          FontWeight.w300),
                      ResultsText(
                          data['correct_answer'].toString(),
                          12,
                          const Color.fromARGB(255, 240, 236, 24),
                          FontWeight.w300),
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
