import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSuKho extends StatefulWidget {
  const QuestionSuKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSuKho();
  }
}

class _QuestionSuKho extends State<QuestionSuKho> {
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
          'Lực lượng chủ chốt của phong trào dân tộc trong những năm Chiến tranh thế giới thứ nhất là:',
      options: {
        'A. Tư sản dân tộc': false,
        'B. Tiểu tư sản': false,
        'C. Công nhân': false,
        'D. Công nhân và nông dân': true
      },
      answer: 'D',
    ),
    Question(
      id: '2',
      title:
          'Hình thức đấu tranh kinh tế của công nhân Việt Nam trong những năm Chiến tranh thế giới thứ nhất là',
      options: {
        'A. chống cướp phạt lương': true,
        'B. đòi tăng lương': false,
        'C. đòi giảm giờ làm': false,
        'D. chống làm việc quá 12 giờ trong ngày': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title:
          'Đối với các nhà yêu nước tiền bối, Nguyễn Tất Thành có thái độ như thế nào?',
      options: {
        'A. Tán thành con đường cứu nước của họ': false,
        'B. Khâm phục tinh thần yêu nước của họ': false,
        'C. Khâm phục tinh thần yêu nước nhưng không tán thành con đường cứu nước của họ':
            true,
        'D. Không tán thành con đường cứu nước của họ': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title:
          'Ở các tỉnh trung du Bắc Kì, có tới 251 ha đất trồng lúa chuyển sang trồng:',
      options: {
        'A. thầu dầu': false,
        'B. lạc': false,
        'C. đậu tây': true,
        'D. bông': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title:
          'Phạm Văn Phi (Vinh) trong những năm Chiến tranh thế giới thứ nhất đã lập ra công ty?',
      options: {
        'A. đóng tàu': false,
        'B. xe hơi': true,
        'C. in': false,
        'D. xay xát': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title: 'Đối tượng chính mà chính quyền thực dân Pháp bắt lính là ai?',
      options: {
        'A. Công nhân': false,
        'B. Tư sản': false,
        'C. Tiểu tư sản': false,
        'D. Nông dân': true
      },
      answer: 'D',
    ),
    Question(
      id: '7',
      title:
          'Đâu là lực lượng chủ chốt của phong trào dân tộc những năm Chiến tranh thế giới thứ nhất?',
      options: {
        'A. Nông dân': false,
        'B. Công dân': false,
        'C. Công dân và nông dân': true,
        'D. Địa chủ phong kiến': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title:
          'Chiến tranh thế giới thứ nhất làm cho việc trao đổi hàng hóa giữa Pháp với Đông Dương thế nào?',
      options: {
        'A. Hàng hóa nhập khẩu từ Pháp sang Đông Dương giảm': true,
        'B. Hàng hóa nhập khẩu từ Pháp sang Đông Dương tăng lên': false,
        'C. Hàng hóa xuất khẩu từ Pháp sang Đông Dương giảm': false,
        'D. Hàng hóa xuất khẩu từ Pháp sang Đông Dương tăng lên': false
      },
      answer: 'A',
    ),
    Question(
      id: '9',
      title:
          'Người đứng đầu phái chủ chiến chủ trương chống Pháp trong triều đình Huế là',
      options: {
        'A. An Dương Vương': false,
        'B. Tôn Thất Thuyết': true,
        'C. Hùng Vương': false,
        'D. Liên Châu': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title: 'Phong trào Cần vương diễn ra sôi nổi nhất ở đâu?',
      options: {
        'A. Bắc Kì và Trung Kì': true,
        'B. Nam Kì và Bắc Kì': false,
        'C. Trung Kì và Nam Kì': false,
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
