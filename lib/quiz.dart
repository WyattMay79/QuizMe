import 'package:flutter/material.dart';
import 'package:quiz_me/landing_page.dart';
import 'package:quiz_me/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() => activeScreen = 'question-screen');
  }

  @override
  Widget build(context) {
    Widget screenWidget = LandingPage(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionsScreen();
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 123, 18, 214),
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
