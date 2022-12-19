import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionHoaKho extends StatefulWidget {
  const QuestionHoaKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionHoaKho();
  }
}

class _QuestionHoaKho extends State<QuestionHoaKho> {
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
          'Kim loại nào sau đây tác dụng mãnh liệt với nước ở nhiệt độ thường?',
      options: {'A. Fe': false, 'B. K': true, 'C. Cu': false, 'D. Mg': false},
      answer: 'B',
    ),
    Question(
      id: '2',
      title:
          'Nhỏ từ từ cho đến dư dung dịch NaOH vào dung dịch AlCl3.Hiện tượng xảy ra là:',
      options: {
        'A. Có kết tủa keo trắng, sau đó kết tủa tan': true,
        'B. Có kết tủa keo trắng, kết tủa không tan': false,
        'C. Có kết tủa keo trắng và có khí bay lên': false,
        'D. Không có kết tủa , không có khí bay lên': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title: 'Muối nào sau đây dễ tan trong nước?',
      options: {
        'A. NaCl': true,
        'B. AgCl': false,
        'C. BaSO4': false,
        'D. CaCO3': false
      },
      answer: 'A',
    ),
    Question(
      id: '4',
      title: 'Kim loại nào sau đây nhẹ nhất?',
      options: {'A. Hg': false, 'B. Na': false, 'C. Li': true, 'D. Os': false},
      answer: 'C',
    ),
    Question(
      id: '5',
      title: 'Kim loại nào sau đây không phản ứng được với H2O ?',
      options: {'A. Ba': false, 'B. Ca': false, 'C. Na': false, 'D. Be': true},
      answer: 'D',
    ),
    Question(
      id: '6',
      title: 'Tính chất không phải của kim loại kiềm là',
      options: {
        'A. Có tính khử mạnh': false,
        'B. Có nhiệt độ nóng chảy thấp': false,
        'C. Có độ cứng cao': true,
        'D. Có tính oxi hóa là +1 trong các hợp chất': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title: 'Loại đá quặng nào sau đây không phải là hợp chất của nhôm?',
      options: {
        'A. Quặng đôlômit': true,
        'B. Đá Rubi': false,
        'C. Đá saphira': false,
        'D. Quặng boxit': false
      },
      answer: 'B',
    ),
    Question(
      id: '8',
      title:
          'Kim loại nào dưới đây trong thực tế được điều chế bằng cả 3 phương pháp: thủy luyện, nhiệt luyện và điện phân?',
      options: {'A. Al': false, 'B. Cu': true, 'C. Na': false, 'D. Fe': false},
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Dãy các kim loại nào sau đây có thể được điều chế bằng cách điện phân nóng chảy muối clorua của nó?',
      options: {
        'A. Al, Mg, Na': false,
        'B. Na, Ba, Mg': true,
        'C. Al, Ba, Na': false,
        'D. Al, Mg, Fe': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'Oxit nào sau đây tác dụng với dung dịch HCl sinh ra hỗn hợp muối?',
      options: {
        'A. Fe3O4': true,
        'B. CaO': false,
        'C. HoHo': false,
        'D. Al2O3': false
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
