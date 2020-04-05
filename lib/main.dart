import 'package:flutter/material.dart';
import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  final que = const [ {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant'],
      },
      {
        'questionText': 'Who\'s your favorite person?',
        'answers': ['utk', 'pra', 'mom', 'dad'],
      },
  ];
  var quein = 0;

   void but(){
     setState(() {
        quein += 1;
      });
    }
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: Text('this is a really stupid app!'),
        ),
        body: quein < que.length ? Quiz(que: que, quein: quein,but: but)
         : result()
      ),
    );
  }
}