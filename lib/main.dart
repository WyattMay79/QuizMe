import 'package:flutter/material.dart';
import 'package:quiz_me/landing_page.dart';

void main() {
  runApp(const QuizMe());
}

class QuizMe extends StatelessWidget {
  const QuizMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: LandingPage(),
      ),
    );
  }
}
