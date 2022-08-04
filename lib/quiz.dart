import 'package:flutter/material.dart';
import 'package:quizapp1/Question.dart';
import 'package:quizapp1/answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final Function answerPrint;
  final int questionIndex;

  Quiz({required this.questions,required this.answerPrint,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'] as String,
      ), // custom widget and using stateless widget for state change

      ...(
          questions[questionIndex]['answers'] as List<Map<String,Object>>)
          .map(
              (answer){
            return Answer( () => answerPrint(answer['score']) , answer['text'] as String);}
      ).toList() // as list used to tell that it is a list and must be used as a list
      // ... used to sprea the list into individual elements



    ]);
  }
}
