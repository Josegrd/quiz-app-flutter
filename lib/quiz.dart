import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreeen = 'start-screen';
  final List<String> selectedAnswer = [];

  // void initState() {
  //   activeScreeen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreeen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    log('Selected answers: $selectedAnswer');
    if (selectedAnswer.length == questions.length) {
      log('Quiz completed');
      setState(() {
        activeScreeen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreeen = 'questions-screen';
      selectedAnswer.clear();
    });
  }

  void endQuiz(){
    setState(() {
      activeScreeen = 'start-screen';
      selectedAnswer.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreeen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer: chooseAnswer);
    }

    if (activeScreeen == 'results-screen') {
      screenWidget = ResultsScreen(
        chooseAnswer: selectedAnswer,
        restartQuiz: restartQuiz,
        endQuiz: endQuiz
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
