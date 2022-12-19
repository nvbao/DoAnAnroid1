import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSinhKho extends StatefulWidget {
  const QuestionSinhKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSinhKho();
  }
}

class _QuestionSinhKho extends State<QuestionSinhKho> {
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
      title: 'Bệnh truyền nhiễm là gì?',
      options: {
        'A. bệnh do cá thể này tạo nên cho cá thể khác': false,
        'B. bệnh do lây lan từ cá thể này tạo nên cho cá thể khác': true,
        'C. bệnh do vi sinh vật gây nên': false,
        'D. cả 3 đáp án trên': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Bệnh HIV/AIDS truyền từ mẹ sang con theo con đường',
      options: {
        'A. truyền dọc, do động vật trung gian mang virut HIV mẹ truyền sang con':
            true,
        'B. truyền dọc, HIV từ mẹ truyền sang thai qua nhau thai': false,
        'C. truyền dọc, HIV từ mẹ truyền sang con qua sữa mẹ hoặc do tác dộng gì đó khi mẹ sinh con':
            false,
        'D. cả 3 đáp án trên': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title: 'Miễn dịch là gì?',
      options: {
        'A. Khả năng không truyền bệnh cho các các thể khác': false,
        'B. Khả năng của cơ thể chống lại cái yếu tố truyền nhiểm gây bệnh':
            true,
        'C. Khả năng khỏi bệnh sau khi bị nhiễm bệnh': false,
        'D. cả 3 đáp án trên': false
      },
      answer: 'B',
    ),
    Question(
      id: '4',
      title:
          'Cây xanh tổng hợp chất hữu cơ từ chất vô cơ nhờ sử dụng năng lượng ánh sáng trong quá trình nào sau đây?',
      options: {
        'A. hóa tổng hợp': false,
        'B. hóa phân li': false,
        'C. quang tổng hợp': true,
        'D. quang phân li': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title: 'Nguyên liệu của quá trình quang hợp gồm các chất nào sau đây?',
      options: {
        'A. khí oxi và đường': false,
        'B. đường và nước': false,
        'C. khí cacbonic,nước và ánh sáng ': false,
        'D. khí cacbonic và nước': true
      },
      answer: 'D',
    ),
    Question(
      id: '6',
      title: 'Phát biểu nào sau đây là đúng khi nói về cơ chế của quang hợp?',
      options: {
        'A. Pha sáng diễn ra trước, pha tối diễn ra sau': true,
        'B. Pha sáng diễn ra sau, pha tối diễn ra trước': false,
        'C. Pha sáng và pha tối diễn ra cùng lúc': false,
        'D. Chỉ có pha sáng diễn ra còn pha tối thì không': false
      },
      answer: 'A',
    ),
    Question(
      id: '7',
      title: 'Trong quang hợp, oxi được tạo ra từ quá trình nào sau đây?',
      options: {
        'A. hấp thụ ánh sáng của diệp lục': false,
        'B. các phản ứng oxi hóa khử': false,
        'C. quang phân li nước': true,
        'D. chuỗi truyền electron': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title: 'Phát biểu nào sau đây đúng?',
      options: {
        'A. đường được tạo ra trong pha tối': false,
        'B. đường được tạo ra trong pha sáng': false,
        'C. oxi sinh ra trong quang hợp có nguồn gốc từ nước': true,
        'D. ATP sinh ra trong quang hợp có nguồn gốc từ nước': false
      },
      answer: 'C',
    ),
    Question(
      id: '9',
      title: 'Năng lượng chủ yếu được tạo ra từ quá trình hô hấp là',
      options: {
        'A. ADN': false,
        'B. ATP': true,
        'C. ADP': false,
        'D. ADK': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title: 'Giai đoạn nào sinh ra nhiều ATP nhất?',
      options: {
        'A. Chuỗi truyền electron hô hấp': true,
        'B. Đường phân': false,
        'C. Chu trình Crep': false,
        'D. cả ba đáp án trên': false
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
