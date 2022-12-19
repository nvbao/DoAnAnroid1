import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionToanKho extends StatefulWidget {
  const QuestionToanKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionToanKho();
  }
}

class _QuestionToanKho extends State<QuestionToanKho> {
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
      title: 'Modun của số phức z = 3 + 4i bằng',
      options: {'A. 25': false, 'B. 10': false, 'C. 5': true, 'D. 15': false},
      answer: 'C',
    ),
    Question(
      id: '2',
      title: 'Số các tổ hợp chập 3 của 12 phần tử là ?',
      options: {
        'A. 1320': false,
        'B. 220': true,
        'C. 36': false,
        'D. 1507': false
      },
      answer: 'B',
    ),
    Question(
      id: '3',
      title: 'Trong không gian 0xyz, phương trình mặt phẳng (Oyz) là',
      options: {
        'A. z = 0': false,
        'B. y = 0': false,
        'C. O = 0': false,
        'D. x = 0': true
      },
      answer: 'D',
    ),
    Question(
      id: '4',
      title:
          'Nam mua 10 quyển vở mỗi quyển giá x đồng và hai bút bi mỗi chiếc giá y đồng . Hỏi Nam phải trả tất cả bao nhiêu đồng?',
      options: {
        'A. 10x+2y (đồng)': true,
        'B. 2x-10y (đồng)': false,
        'C. 2y-10x (đồng)': false,
        'D. 2x+10y (đồng)': false
      },
      answer: 'A',
    ),
    Question(
      id: '5',
      title: 'Biểu thức n.(n + 1)(n + 2) với n là số nguyên, được phát biểu là',
      options: {
        'A. Tích của ba số nguyên': false,
        'B. Tích của ba số nguyên chẵn': false,
        'C. Tích của ba số nguyên liên tiếp': true,
        'D. Tích của ba số nguyên lẻ': false
      },
      answer: 'C',
    ),
    Question(
      id: '6',
      title: 'Cho a,b thuộc Z và b # 0. Nếu có số nguyên q sao cho a = bq thì',
      options: {
        'A. a là ước của b': false,
        'B. b là ước của a': false,
        'C. a là bội của b': false,
        'D. Cả 3 đáp án trên': true
      },
      answer: 'D',
    ),
    Question(
      id: '7',
      title: 'Chọn khẳng định đúng:',
      options: {
        'A. Mọi số tự nhiên đều có ước chung với nhau': true,
        'B. Số nguyên tố chỉ có 1 ước là chính nó': false,
        'C. Hai số nguyên tố khác nhau thì không có ước': false,
        'D. Mọi số tự nhiên đều có ước là 0': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title: 'Có bao nhiêu số nguyên tố trong các số sau: 5;13;21;51;29;129?',
      options: {'A. 3': true, 'B. 2': false, 'C. 1': false, 'D. 4': false},
      answer: 'A',
    ),
    Question(
      id: '9',
      title: 'Kết quả của phép tính nào sau đây là số nguyên tố',
      options: {
        'A. 7+2-1': false,
        'B. 15x2+4': false,
        'C. 15-5+3': true,
        'D. 12:2+7': false
      },
      answer: 'C',
    ),
    Question(
      id: '10',
      title: 'Cho các số 21;77;71;101. Chọn câu đúng.',
      options: {
        'A. Số 21 là hợp số, các số còn lại là số nguyên tố': false,
        'B. Có hai số nguyên tố và hai hợp số trong các số trên': true,
        'C. Chỉ có một số nguyên tố còn lại là hợp số': false,
        'D. Không có số nguyên tố và hợp số nào cả': false
      },
      answer: 'B',
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
