import 'package:flutter_doan_demo1/question_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DBconnect {
  final url = Uri.parse(
      'https://tracnghiemdemo-380fa-default-rtdb.firebaseio.com/question.json');

  Future<void> addQuestion(Question question) async {
    http.post(url,
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }

  Future<List<Question>> fedchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach(((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      }));
      print(data);
      return newQuestions;
    });
  }
}
