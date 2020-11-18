import 'package:flutter/material.dart';
import 'package:flutter_quize_app/widgets/quize.dart';
import 'package:flutter_quize_app/widgets/result.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final _question = const [
    {
      'questionText': 'What is your Fevorite Animal ?',
      'answerText': [{'text':'Snack','score':0}, {'text':'Rabbit','score':10}, {'text':'Beer','score':0}, {'text':'Lion','score':0}
      ]
    },
    {
      'questionText': 'What is your Fevorite Colour ?',
      'answerText': [{'text':'Red','score':0}, {'text':'Yellow','score':10}, {'text':'Blue','score':0}, {'text':'Black','score':0}]
    },
    {
      'questionText': 'Whats your fevorit Flower ?',
      'answerText': [{'text':'Few1','score':0}, {'text':'Few2','score':10}, {'text':'Few3','score':0}, {'text':'Few4','score':0}]
    },
    {
      'questionText': 'What is your Fevorite Actor ?',
      'answerText': [{'text':'Ranvir','score':0}, {'text':'Ranbir','score':10}, {'text':'Amit','score':0}, {'text':'Lal','score':0}]
    },
    {
      'questionText': 'What is your Fevorite Car ?',
      'answerText': [{'text':'BMW','score':0}, {'text':'CIVIC','score':10}, {'text':'HONDA','score':0}, {'text':'SWIFT','score':0}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;

    });
  }
  void _answerChoise(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });


    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: _questionIndex < _question.length
                ? Quize(answerChoise : _answerChoise,question:_question,questionIndex :_questionIndex)
                : Result(_totalScore,_resetQuiz),
          )),
    );
  }
}
