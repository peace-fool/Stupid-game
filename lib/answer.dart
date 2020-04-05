import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  final Function but;
  final String answer;
  Answer(this.but , this.answer);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(child: Text(answer),
      onPressed: but,
      color: Colors.blue,
      textColor: Colors.white,
      )
    );
  }
}