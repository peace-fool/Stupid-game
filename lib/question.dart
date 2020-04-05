import 'package:flutter/material.dart';

class question extends StatelessWidget{

  final String que;
  question(this.que);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text
      (que,
       style: TextStyle(fontSize: 28),
       textAlign: TextAlign.center,
      ),
    );
  }
}