import 'package:flutter/material.dart';
import 'package:quiz_me/quiz.dart';

void main() {
  runApp(const QuizMe());
}

class QuizMe extends StatelessWidget {
  const QuizMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
