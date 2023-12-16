import 'package:flutter/material.dart';
import 'package:project_test2/data/questions.dart';
import 'package:project_test2/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i, //string
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions of $numTotalQuestions questions correctly',
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.restart_alt,
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
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
