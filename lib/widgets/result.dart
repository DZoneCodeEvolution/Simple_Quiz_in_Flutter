import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score,this.resetQuiz);

  String get resultPassornot {
    var resultText;
    if (score == 10) {
      resultText = "your Are Fail and your Score is ${score}";
    } else if (score == 20) {
      resultText = "your Are Pass and your Score is ${score}";
    } else if (score == 30) {
      resultText = "your Are Pass and your Score is ${score}";
    } else if (score == 40) {
      resultText = "your Are Pass and your Score is ${score}";
    } else if (score == 50) {
      resultText = "your Are Pass and your Score is ${score}";
    } else {
      resultText = "your Are Fail and your Score is ${score}";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            resultPassornot,
            style: TextStyle(fontSize: 28, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          FlatButton(
            child: Text('Restart Quiz',style: TextStyle(fontSize: 20,color: Colors.blue),),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
