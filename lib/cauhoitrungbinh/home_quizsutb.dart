import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSuTB extends StatefulWidget {
  const QuestionSuTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSuTB();
  }
}

class _QuestionSuTB extends State<QuestionSuTB> {
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
      title: 'Quốc gia cổ được hình thành trên cơ sở Văn hóa Óc Eo là',
      options: {
        'A. Chân Lạp': false,
        'B. Phù Nam': true,
        'C. Văn Lang': false,
        'D. Chăm-pa': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Hoạt động kinh tế phổ biến của cư dân Phù Nam là',
      options: {
        'A. trồng rau nuôi cá': false,
        'B. đánh bắt cá và khai thác hải sản': false,
        'C. khai thác rừng ': false,
        'D. sản xuất nông nghiệp': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title: 'Vào khoảng cuối thế kỉ VII, vua Lâm Ấp đổi tên nước thành',
      options: {
        'A. Tượng Lâm': false,
        'B. Nhật Nam': false,
        'C. Chăm-pa': true,
        'D. Chân Lạp': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title: 'Văn hóa ở nước ta dưới thời kì Bắc thuộc có đặc điểm gì nổi bật?',
      options: {
        'A. Văn hóa Trung Quốc không ảnh hưởng nhiều đến văn hóa nước ta':
            false,
        'B. Văn hóa Trung Quốc ảnh hưởng rất nhiều đến văn hóa nước ta': false,
        'C. Phát huy bản sắc văn hóa dân tộc': false,
        'D. Tiếp thu và sáng tạo các yếu tố bên ngoài,giữ gìn những giá trị văn hóa cốt lõi của dân tộc':
            true
      },
      answer: 'D',
    ),
    Question(
      id: '5',
      title: 'Người Hán truyền bá Nho giáo vào nước ta, bắt nhân dân ta phải',
      options: {
        'A. sùng bái Nho giáo': false,
        'B. thay đổi theo phong tục người Hán': true,
        'C. học chữ Nho': false,
        'D. học theo tục lệ Nho giáo': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title:
          'Đâu không phải nét văn hóa của người Việt được giữ gìn và phát triển trong thời kì Bắc thuộc?',
      options: {
        'A. Tín ngưỡng thờ cúng tổ tiên': false,
        'B. Tục ăn trầu': false,
        'C. Tục nhuộm răng đen': false,
        'D. Tục xin chữ đầu năm': true
      },
      answer: 'D',
    ),
    Question(
      id: '7',
      title:
          'Ai đã lãnh đạo nhân dân Âu Việt và Lạc Việt kháng chiến chống quân Tần xâm lược?',
      options: {
        'A. Hùng Vương': false,
        'B. Thục Phán': true,
        'C. Hai Bà Trưng': false,
        'D. Lê Lợi': false
      },
      answer: 'B',
    ),
    Question(
      id: '8',
      title: 'Tổ chức bộ máy Nhà nước Âu Lạc được xây dựng trên cơ sở tổ chức',
      options: {
        'A. Nhà nước thời Văn Lang': true,
        'B. Nhà nước thời Nhà Lý': false,
        'C. Nhà nước Lạc Việt': false,
        'D. Nhà nước Tây Âu': false
      },
      answer: 'A',
    ),
    Question(
      id: '9',
      title: 'Theo tương truyền, nỏ Liên Châu do ai chế tạo?',
      options: {
        'A. An Dương Vương': false,
        'B. Cao Lỗ': true,
        'C. Hùng Vương': false,
        'D. Liên Châu': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title: 'Kinh đô của nước Âu Lạc - Phong Khê, nay là',
      options: {
        'A. Cố Loa - Đông Anh - Hà Nội': true,
        'B. Hát Môn - Phúc Thọ - Hà Nội': false,
        'C. Tiên Phong - Phổ Yên - Thái Nguyên': false,
        'D. Mai Phụ - Lộc Hà - Hà Tĩnh': false
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
