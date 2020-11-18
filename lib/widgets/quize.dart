import 'package:flutter/material.dart';
import 'package:flutter_quize_app/widgets/answer.dart';
import 'package:flutter_quize_app/widgets/question.dart';


class Quize extends StatelessWidget {
  final Function answerChoise;
  final List<Map<String, Object>> question;
  final int questionIndex;

  Quize({
    @required this.answerChoise,
    @required this.question,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          Question(question[questionIndex]['questionText']),
          SizedBox(
            height: 15,
          ),
          ...(question[questionIndex]['answerText'] as List<Map<String,Object>>)
              .map((answer) {
            return Answer(() =>answerChoise(answer['score']), answer['text']);
          }).toList()
        ])
    );
  }
}
