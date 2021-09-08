import 'package:flutter/material.dart';
import 'package:flutter_1/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback selectHandler;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.selectHandler
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answer,selectHandler);
        }).toList()
      ],
    );
  }
}
