import 'package:flutter/material.dart';
import 'text_style.dart';

class Home extends StatelessWidget {
  const Home(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(230, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80.0,
          ),
          const HomeText('Learn Flutter the fun way!', 24.0),
          const SizedBox(
            height: 20.0,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            label: const Text('Start Quiz', style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
