import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 275,
            color: const Color.fromARGB(200, 255, 255, 255),
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
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
              debugPrint('Received click');
            },
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(const Size(215, 75)),
            ),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
