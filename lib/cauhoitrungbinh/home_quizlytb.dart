import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionLyTB extends StatefulWidget {
  const QuestionLyTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionLyTB();
  }
}

class _QuestionLyTB extends State<QuestionLyTB> {
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
      title: 'Điều nào sau đây không đúng?',
      options: {
        'A. Sự bay hơi là chuyển từ thể lỏng sang thể khí ở bề mặt chất lỏng':
            false,
        'B. Sự bay hơi là chuyển từ thể rắn sang thể lỏng': true,
        'C. Sự nóng chảy là chuyển từ thể rắn sang thể lỏng': false,
        'D. Sự sôi là quá trình từ thể lỏng sang thể khí xảy ra ở bên trong và trên bề mặt chất lỏng':
            false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title:
          'Ở áp suất tiêu chuẩn, chất rắn kết tinh nào sau đây có nhiệt độ nóng chảy là 283 K.',
      options: {
        'A. Thiếc': false,
        'B. Nhôm': false,
        'C. Chì': false,
        'D. Nước đá': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title: 'Một vật được thả rơi tự do, trong quá trình rơi',
      options: {
        'A. động năng của vật không đổi': false,
        'B. thế năng của vật không đổi': false,
        'C. tổng động năng và thế năng của vật không đổi': true,
        'D. cơ năng của vật không đổi': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title:
          'Trong quá trình dao động của một con lắc đơn thì tại vị trí cân bằng',
      options: {
        'A. động năng đạt giá trị cực đại': true,
        'B. thế năng đạt giá trị cực đại': false,
        'C. cơ năng đạt giá trị cực đại': false,
        'D. cả 3 đáp án trên': false
      },
      answer: 'A',
    ),
    Question(
      id: '5',
      title: 'Một vật đang chuyển động có thể không có:',
      options: {
        'A. Động năng': false,
        'B. Thế năng': true,
        'C. Cơ năng': false,
        'D. Động lượng': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title:
          'Chọn phương án sai. Đại lượng luôn thay đổi khi một vật được ném ngang',
      options: {
        'A. Động năng': false,
        'B. Thế năng': false,
        'C. Cơ năng': true,
        'D. Động lượng': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title:
          'Nếu khối lượng của vật giảm 4 lần và vận tốc tăng lên 2 lần, thì động năng của vật sẽ:',
      options: {
        'A. tăng 2 lần': false,
        'B. giảm 2 lần': false,
        'C. không thay đổi': true,
        'D. tăng 4 lần': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title: 'Tìm câu sai. Động năng của một vật không đổi khi',
      options: {
        'A. chuyển động thẳng đều': false,
        'B. chuyển động tròn đều': true,
        'C. chuyển động cong đều': false,
        'D. chuyển động biến đổi đều': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title: 'Chọn phương án đúng. Động năng của một vật thay đổi khi vật',
      options: {
        'A. chuyển động thẳng đều': false,
        'B. chuyển động biến đổi đều': true,
        'C. chuyển động tròn đều': false,
        'D. chuyển động cong đều': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title: 'Thế năng đàn hồi của một lò xo không phụ thuộc vào',
      options: {
        'A. độ cứng của lò xo': false,
        'B. độ biến dạng của lò xo': false,
        'C. chiều biến dạng của lò xo': true,
        'D. mốc thế năng': false
      },
      answer: 'C',
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
