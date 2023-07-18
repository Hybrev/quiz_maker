import 'package:flutter/material.dart';
import 'package:quiz_maker/data/questions.dart';
import 'package:quiz_maker/questions_screen.dart';
import 'package:quiz_maker/results_screen.dart';
import 'home_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Home(switchScreen);

    // final screenWidget = activeScreen == 'home-screen'
    //           ? Home(switchScreen)
    //           : const QuestionsScreen();

    switch (activeScreen) {
      case 'questions-screen':
        screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
        break;
      case 'results-screen':
        screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
        break;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 27, 126, 219),
                Color.fromARGB(255, 9, 73, 156),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
