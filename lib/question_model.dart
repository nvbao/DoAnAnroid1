import 'package:flutter/material.dart';

class Question {
  final String id; //id câu hỏi
  final String title; //nội dung
  final String answer; //đán áp đúng
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.title,
    required this.options,
    required this.answer,
  });

  String toString() {
    return 'Question(id: $id, title: $title, options: $options, answer: $answer)';
  }
}
