import 'package:flutter/material.dart';
import 'package:project_test2/start_screen.dart';
import 'package:project_test2/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.purple,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
