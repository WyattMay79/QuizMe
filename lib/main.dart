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
          child: const LandingPage(),
        ),
      ),
    );
  }
}
