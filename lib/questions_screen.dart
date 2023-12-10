import 'package:flutter/material.dart';
import 'package:project_test2/style/answer_ques_button.dart';
import 'package:project_test2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_test2/questions_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentquestionsindex = 0;

  answerQuistion(String selectedAnswer) {
    widget.onSelectAnswer('...');
    //currentquestionsindex = currentquestionsindex + 1;
    //currentquestionsindex += 1;
    setState(
      () {
        currentquestionsindex++;
        //  هذا الكود مشابهه للي فوق دارت موفره الميزة هذي
      },
    );
    //this aollsw do the same job but only increments with 1
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentquestionsindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuistion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
