import 'package:flutter/material.dart';
import 'package:quizapp1/quiz.dart';
//import 'package:quizapp1/main.dart';

import './Question.dart';
import './answer.dart';
import './result.dart';

void main(){

  runApp(MyApp());
  
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();  // this will help to re render
  }

}

class MyAppState extends State<MyApp>{

  var questions = [
    {'questionText':'Whats your favourite color',
      'answers': [{'text':'Red' , 'score' : 8},{'text':'Green', 'score':6 },{'text':'Yellow', 'score':4},{'text':'White' ,'score': 2}],},
    {'questionText':'Whats your favourite Animal',
      'answers': [{'text':'Lion' , 'score' : 8},{'text':'Dog', 'score':6 },{'text':'Cat', 'score':4},{'text':'Rabbit' ,'score': 2}],},
    {'questionText':'Whats your favourite game',
      'answers': [{'text':'Rugby' , 'score' : 8},{'text':'Football', 'score':6 },{'text':'Cricket', 'score':4},{'text':'Badminton' ,'score': 2}],},
  ];

  var questionIndex=0;
  var totalScore =0;

  void resetHandler(){
    setState((){
      questionIndex=0;
      totalScore=0;

    });
  }
  void _answerPrint(int score){
    totalScore += score;
    setState((){ // this set state will run the build method
      questionIndex =questionIndex+1;

    });
    print('answer');
  }


  Widget build(BuildContext context){

    return (MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("This is My Home Page")
      ),
      body: questionIndex<questions.length ? Quiz(questions: questions, answerPrint : _answerPrint,questionIndex: questionIndex) : Result(totalScore, resetHandler
      )
    ),
    ));

  }

  
  
}