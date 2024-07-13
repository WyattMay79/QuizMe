import 'package:flutter/material.dart';

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Text for Question:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Recieved click');
            },
            child: const Text('Some Text',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Recieved click');
            },
            child: const Text('Some Text',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Recieved click');
            },
            child: const Text('Some Text',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Recieved click');
            },
            child: const Text('Some Text',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
