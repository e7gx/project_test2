import 'package:flutter/material.dart';
import 'package:project_test2/style/answer_ques_button.dart';
import 'package:project_test2/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentquestionsindex = 0;

  answerQuistion() {
    //currentquestionsindex = currentquestionsindex + 1;
    //currentquestionsindex += 1;
    //  هذا الكود مشابهه للي فوق دارت موفره الميزة هذي
    currentquestionsindex++; //this aollsw do the same job but only increments with 1
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
              style: const TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(answerText: answer, onTap: () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
