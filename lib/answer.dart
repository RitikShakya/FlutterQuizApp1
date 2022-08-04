import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final  VoidCallback selectorAnswer;
  final String answerText;
  Answer(this.selectorAnswer, this.answerText);




  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,


      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectorAnswer,
      ),

    );
  }
}
