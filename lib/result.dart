import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          "You did it!",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resetHandler,
          child: Text(
            "Restart",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange)),
        )
      ],
    ));
  }
}
