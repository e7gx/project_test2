import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 251, 251, 251),
          ),
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              'Lets Learn Flutter with me guys!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ),
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
