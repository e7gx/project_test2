import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You answered x of y questions correctly'),
            const SizedBox(
              height: 50,
            ),
            const Text('List of Answers and Questions...'),
            TextButton(
              onPressed: () {},
              child: const Text('Restart'),
            )
          ],
        ),
      ),
    );
  }
}
