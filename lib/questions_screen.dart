import 'package:flutter/material.dart';
import 'package:quiz_me/answer_btn.dart';
import 'package:quiz_me/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  var currState = 0;

  void questionsBtn() {
    setState(() => currState += 1);
  }

  @override
  Widget build(context) {
    final currQuestion = questions[0];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...currQuestion.getShuffleAnswers().map(
              (answer) {
                return AnswerBtn(
                  answerText: answer,
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
