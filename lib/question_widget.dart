import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final int indexAction;
  final int totalQuestions;

  QuestionWidget(
      {Key? key,
      required this.question,
      required this.indexAction,
      required this.totalQuestions})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Câu ${indexAction + 1}/$totalQuestions: $question',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
