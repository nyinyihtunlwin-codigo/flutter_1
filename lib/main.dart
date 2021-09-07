import 'package:flutter/material.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite movie?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(_questions.elementAt(_questionIndex)),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer1")),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer2")),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer3")),
          ],
        ),
      ),
    );
  }
}
