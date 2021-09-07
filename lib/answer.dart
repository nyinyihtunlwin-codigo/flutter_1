import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String name;

  Answer(this.name,this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: selectHandler,
          child: Text(name, style: TextStyle(
            color: Colors.white
          ),),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange)
          ),)
    );
  }
}