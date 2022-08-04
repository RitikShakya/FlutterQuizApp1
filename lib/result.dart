import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
   final VoidCallback resetHandler;


  Result(this.result, this.resetHandler);

  String get ResultText{

    var resultText ;

    if(result<=8){
      resultText ="you are awesome";
    }else if(result>8&&result<=12){
      resultText="pretty good";
    }else if(result>=18){
      resultText="Strange Character you are";
    }
    else{
      resultText="You did it";
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(child: Column(


        children : [ Text( ResultText, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      
    ), FlatButton(onPressed: resetHandler, child: Text("Restatrt Quiz"), textColor: Colors.blue,)]
    )
    );
  }
}
