import 'package:flutter/material.dart';
import 'package:quiz_me/start_quiz.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: StartQuiz(),
    );
  }
}
