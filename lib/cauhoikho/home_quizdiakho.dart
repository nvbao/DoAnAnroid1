import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionDiaKho extends StatefulWidget {
  const QuestionDiaKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionDiaKho();
  }
}

class _QuestionDiaKho extends State<QuestionDiaKho> {
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
      title: 'Vùng kinh tế trọng điểm không phải là vùng?',
      options: {
        'A. bao gồm phạm vi của nhiều tỉnh, thành phố': false,
        'B. Có ranh giới không thay đổi': true,
        'C. hội tụ đầy đủ các thế mạnh': false,
        'D. có tỉ trọng lớn trong GDP cả nước': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Thế mạnh nổi bật nhất của vùng kinh tế trọng điểm phía Bắc là',
      options: {
        'A. Nguồn lao động đông, chất lượng cao': true,
        'B. Vị trí địa lý thuận lợi': false,
        'C. Lịch sử khai thác lâu đời': false,
        'D. Giàu khoáng sản': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title: 'Thế mạnh hàng đầu của vùng kinh tế trọng đểm miền Trung là',
      options: {
        'A. Khai thác tổng hợp tài nguyên biển, khoáng sản, rừng': true,
        'B. Khai thác lãnh thổ theo chiều sâu': false,
        'C. Nguồn lao động có trình độ cao': false,
        'D. Cơ sở hạ tầng hoàn thiện nhất cả nước': false
      },
      answer: 'A',
    ),
    Question(
      id: '4',
      title:
          'Điểm khác biệt giữa vùng kinh tế trọng điểm phía Bắc và vùng kinh tế trọng điểm phía Nam là',
      options: {
        'A. Có cơ sở hạ tầng tốt': false,
        'B. Có cửa ngõ thông ra biển': false,
        'C. Có nhiều ngành công nghiệp truyền thống': true,
        'D. Có lực lượng lao động trình độ cao': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title:
          'Căn cứ vào Atlat đia lí Việt Nam trang 30, tỉnh nào sau đây không thuộc vùng kinh tế trọng điểm phía bắc ( năm 2007)',
      options: {
        'A. Cao Bằng': false,
        'B. Hà Giang': false,
        'C. Bắc Ninh': false,
        'D. Bắc Giang': true
      },
      answer: 'D',
    ),
    Question(
      id: '6',
      title:
          'Căn cứ vào Atlat đia lí Việt Nam trang 30,tỉnh duy nhất thuộc vùng Trung du và miền núi bắc Bộ nằm trong vùng kinh tế trọng điểm phía Bắc ( năm 2007) là',
      options: {
        'A. Quãng Nam': false,
        'B. Quãng Ngãi': false,
        'C. Quãng Ninh': true,
        'D. Quãng Bình': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title:
          'Vùng kinh tế trọng điểm miền Trung không có các tỉnh và thành phố nào dưới đây?',
      options: {
        'A. Bình Thuận': true,
        'B. Bình Dương': false,
        'C. Bình Định': false,
        'D. Bình Hưng Hòa': false
      },
      answer: 'B',
    ),
    Question(
      id: '8',
      title: 'Tỉnh nào sau đây không thuộc vùng kinh tế trọng điểm phía Bắc?',
      options: {
        'A. Đà Lạt': false,
        'B. Đà Nẵng': true,
        'C. Hà Giang': false,
        'D. Đồng Nai': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Đâu không phải là tài nguyên thiên nhiên nổi trội của vùng kinh tế trọng điểm phía Nam là',
      options: {
        'A. Dầu khí': false,
        'B. Quặng bôxit': true,
        'C. Sinh vật biển': false,
        'D. Đất đỏ badan': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'Tỉnh nào sau đây ở vùng Trung du và miền núi Bắc Bộ nằm trong vùng kinh tế trọng điểm phía Bắc?',
      options: {
        'A. Quãng Ninh': true,
        'B. Bến Tre': false,
        'C. Đồng Nai': false,
        'D. Tp Hồ Chí Minh': false
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
