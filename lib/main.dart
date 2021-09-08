import 'package:flutter/material.dart';
import 'package:flutter_1/question.dart';
import 'package:flutter_1/answer.dart';
import 'package:flutter_1/quiz.dart';
import 'package:flutter_1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "White", "Red"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Elephant", "Pig", "Rhino"]
    },
    {
      "questionText": "What's your favorite movie?",
      "answers": ["A Team", "John Wick", "Avengers"]
    },
  ];

  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectHandler: _answerQuestion)
            : Result(_resetQuiz),
      ),
    );
  }
}
