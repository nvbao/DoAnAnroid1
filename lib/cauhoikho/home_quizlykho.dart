import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionLyKho extends StatefulWidget {
  const QuestionLyKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionLyKho();
  }
}

class _QuestionLyKho extends State<QuestionLyKho> {
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
      title: 'Phát biểu nào sau đây là đúng khi nói về dao động tắt dần?',
      options: {
        'A. dạo động tắt dần có biên độ tăng dần theo thời gian': false,
        'B. dạo động tắt dần có biên độ giảm dần theo thời gian': true,
        'C. dạo động tắt dần có biên độ giảm dần theo quảng đường': false,
        'D. dạo động tắt dần có biên độ tăng dần theo quảng đường': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Dao động tắt dần là một dao động có:',
      options: {
        'A. biên dộ giảm dần theo thời gian': true,
        'B. biên dộ tăng dần theo thời gian': false,
        'C. biên độ thay dổi liên tục': false,
        'D. ma sát cực đại': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title: 'Hiện tượng cộng hưởng thể hiện rõ rết nhất khi:',
      options: {
        'A. biên dộ của lực cưỡng bức nhỏ': false,
        'B. tần số của lực cưỡng bức lớn': false,
        'C. lực ma sát của môi trường lớn': false,
        'D. lực ma sát của môi trường nhỏ': true
      },
      answer: 'D',
    ),
    Question(
      id: '4',
      title:
          'Cơ năng của một dao động tắt dần giảm 5% sau mỗi chu kì. Biên độ dao động tắt dần sau mỗi chu kì giảm đi:',
      options: {
        'A. 5%': false,
        'B. 10%': false,
        'C. 2,5%': true,
        'D. 2,25%': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title:
          'Một người xách một xô nước đi trên đường, mỗi bước đi dài 45 cm thì nước trong xô bị sóng sánh mạnh nhất. Chu kì dao động riêng của nước trong xô là 0,3 s. Vận tốc bước đi của người đó là',
      options: {
        'A. 5,5 km/h': false,
        'B. 5,3 km/h': false,
        'C. 5,2 km/h': false,
        'D. 5,4 km/h': true
      },
      answer: 'D',
    ),
    Question(
      id: '6',
      title: 'Sóng âm không truyền được trong:',
      options: {
        'A. Thép': false,
        'B. Không khí': false,
        'C. Chân không': true,
        'D. Nước': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title: 'Khi cường độ âm tăng lên 10n lần, thì mức cường độ âm sẽ:',
      options: {
        'A. Tăng thêm 10n Db': true,
        'B. Tăng lên 10 lần': false,
        'C. Tăng lên n lần': false,
        'D. Tăng lên 10n lần': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title:
          'Một con lắc lò xo gồm một khối lượng m=0,4kg và một lò xo có độ cứng k=80N/m. Con lắc dao động điều hòa với biên độ bằng 0,1m. Hỏi tốc độ của con lắc khi qua vị trí cân bằng?',
      options: {
        'A. 0 m/s': false,
        'B. 1,4 m/s': true,
        'C. 2,0 m/s': false,
        'D. 3,4 m/s': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title: 'Chọn ý sai. Đối với con lắc lò xo nằm ngang dao động điều hòa:',
      options: {
        'A. Ở vị trí cân bằng lò xo không biến dạng': false,
        'B. Lò xo luôn dãn khi vật dao động điều hòa': true,
        'C. Lực đàn hồi là lực kéo về': false,
        'D. Li độ có độ lớn bằng độ biến đạng lò xo': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'Một vật nhỏ dao động điều hòa theo một quỹ đạo thẳng dài 10 cm. Quãng đường vật đi được trong một chu kì dao động bằng',
      options: {
        'A. 20 cm': true,
        'B. 10 cm': false,
        'C. 40 cm': false,
        'D. 5 cm': false
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
