import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{

final List<Map<String,Object>> que;
final quein;
final Function but;

Quiz({this.que , this.quein , this.but});

  @override
  Widget build(BuildContext context){
    return Column(
          children:[
          question(que[quein]['questionText']),
          ...(que[quein]['answers'] as List<String>).map((answer){
          return Answer(but , answer);
          }).toList()
        ]);
  }
}