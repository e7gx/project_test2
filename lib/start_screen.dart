import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: const Color.fromARGB(117, 119, 83, 83),
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'Lets Learn Flutter with me guys!',
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 119, 83, 83),
                  fontWeight: FontWeight.w900,
                  fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.rocket_launch_outlined,
              color: Color.fromARGB(255, 119, 83, 83),
              size: 30,
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 2.5,
                color: Color.fromARGB(255, 119, 83, 83),
              ),
              textStyle: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 119, 83, 83),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              foregroundColor: const Color.fromARGB(255, 119, 83, 83),
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
