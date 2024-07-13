import 'package:flutter/material.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});

  @override
  State<StartQuiz> createState() {
    return _StartQuizState();
  }
}

class _StartQuizState extends State<StartQuiz> {
  var currState = 0;

  void quizStart() {
    setState(() => currState = 0);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 275,
          height: 350,
        ),
        const SizedBox(
          height: 250,
          child: Center(
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size(215, 75)),
          ),
          child: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
