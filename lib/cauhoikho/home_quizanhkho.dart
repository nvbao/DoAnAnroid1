import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionAnhKho extends StatefulWidget {
  const QuestionAnhKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionAnhKho();
  }
}

class _QuestionAnhKho extends State<QuestionAnhKho> {
  // var db = DBconnect();

  /* late Future _question; */

  /* Future<List<Question>> getData() async {
    return db.fedchQuestions();
  } */

  /* @override
  void initState() {
    _question = getData();
    super.initState();
  }
 */
  int index = 0;
  int score = 0;
  int diem = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultScreen(
                diem: diem,
                result: score,
                questionLength: questionLength,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.amber,
            content: Text(
              'Vui lòng chọn câu trả lời !!',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(horizontal: 20),
          ),
        );
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
        diem = diem + 100;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      diem = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

// ignore: prefer_final_fields
  List<Question> _questions = [
    Question(
      id: '1',
      title:
          'Would you mind .................. your address on the back of this check?',
      options: {
        'A. write': false,
        'B. writing': true,
        'C. to write': false,
        'D. written': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title:
          'When I went to see them last night, they ................. chess.',
      options: {
        'A. were playing': true,
        'B. have playing': false,
        'C. has playing': false,
        'D. was playing': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title:
          'Yesterday I met your brother, ............ had taken us to the Headquarters of the United Nations in New York before.',
      options: {
        'A. which': false,
        'B. who': true,
        'C. what': false,
        'D. that': false
      },
      answer: 'B',
    ),
    Question(
      id: '4',
      title:
          'Keep quiet! You .................. talk so loudly in here. Everybody is working',
      options: {
        'A. need': false,
        'B. must': false,
        'C. must not': true,
        'D. need not': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title:
          'Pay ................. to all traffic signs when you are travelling in the street.',
      options: {
        'A. pollution': false,
        'B. concentration': false,
        'C. attention': false,
        'D. attraction': true
      },
      answer: 'D',
    ),
    Question(
      id: '6',
      title: 'If he had been more careful, he .................. an accident.',
      options: {
        'A. would not have had': true,
        'B. would not have have': false,
        'C. would not have has': false,
        'D. would not has had': false
      },
      answer: 'A',
    ),
    Question(
      id: '7',
      title: 'Nobody can prevent us from ............ good things.',
      options: {
        'A. do': false,
        'B. done': false,
        'C. doing': true,
        'D. did': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title: 'We arrived on time ................ the traffic was bad.',
      options: {
        'A. despite': false,
        'B. even': false,
        'C. although': true,
        'D. in spite of': false
      },
      answer: 'C',
    ),
    Question(
      id: '9',
      title:
          'Mr. Pike ............ teaches you English is living in Manchester.',
      options: {
        'A. whom': false,
        'B. who': true,
        'C. whose': false,
        'D. what': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'When Tet Holiday comes, Vietnamese people often feel inclined to ................ their houses.',
      options: {
        'A. do over': true,
        'B. do in': false,
        'C. do up ': false,
        'D. do through': false
      },
      answer: 'A',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 76, 135),
      appBar: AppBar(
        //title: Text('Câu hỏi'),
        //centerTitle: true,
        backgroundColor: Color.fromARGB(255, 4, 76, 135),
        shadowColor: Colors.transparent,
        actions: [
          Row(
            children: [
              // OtpTimer(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  backgroundColor:
                                      Color.fromARGB(255, 4, 76, 135),
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text('Mua đáp án'),
                                                  content: Text(
                                                      'Đáp án là: ${_questions[index].answer} '),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Close'),
                                                    )
                                                  ],
                                                );
                                              });
                                        }, // bổ sung đâng nhập
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(120, 50),
                                            backgroundColor: Colors.blue),
                                        child: const Text(
                                          'Mua Đáp Án',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: ElevatedButton(
                                        onPressed: () {}, // bổ sung đâng nhập
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(120, 50),
                                            backgroundColor: Colors.blue),
                                        child: const Text(
                                          '50:50',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    /* SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('Mua Đáp Án'),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('50:50'),
                                  ),*/
                                    SimpleDialogOption(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                );
                              });
                        }, // bổ sung đâng nhập
                        //đổi màu cái nút
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Color.fromARGB(255, 4, 76, 135),
                        ),
                        child: const Text(
                          'Quyền trợ giúp',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Điểm: $diem',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Đúng: $score',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            QuestionWidget(
                indexAction: index,
                question: _questions[index].title,
                totalQuestions: _questions.length),
            const Divider(
                // color: Colors.white,
                ),
            const SizedBox(
              height: 25,
            ),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                    _questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                          ? Colors.green
                          : Colors.red
                      : Colors.grey,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => nextQuestion(_questions.length),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: NextQuestion(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
