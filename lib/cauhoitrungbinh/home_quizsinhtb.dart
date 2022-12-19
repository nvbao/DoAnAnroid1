import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSinhTB extends StatefulWidget {
  const QuestionSinhTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSinhTB();
  }
}

class _QuestionSinhTB extends State<QuestionSinhTB> {
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
      title: 'Mốc trắng dinh dưỡng bằng hình thức',
      options: {
        'A. Kí sinh': false,
        'B. Hoại sinh': true,
        'C. Cộng sinh': false,
        'D. Tự dưỡng': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Loại nấm nào dưới đây được xếp vào nhóm nấm mũ ?',
      options: {
        'A. nấm hương': false,
        'B. nấm mỡ': false,
        'C. nấm rơm ': false,
        'D. cả 3 đáp án trên': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title: 'Ở người, bệnh nào dưới đây do nấm gây ra ?',
      options: {
        'A. Tay chân miệng': false,
        'B. Đậu mùa': false,
        'C. Lang pen': true,
        'D. Bạch tạng': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title: 'Tính đa dạng của thực vật được biểu hiện ở điều nào sau đây ?',
      options: {
        'A. Số lượng các loài': false,
        'B. Số lượng các cá thể trong mỗi loài': false,
        'C. Mỗi trường sống của mỗi loài': false,
        'D. cả 3 đáp án trên': true
      },
      answer: 'D',
    ),
    Question(
      id: '5',
      title: 'Loại cây nào dưới đây được dùng để làm thuốc ?',
      options: {
        'A. Thuốc lá': false,
        'B. Sâm Ngọc Linh': true,
        'C. Ngô đồng': false,
        'D. Hoa Sữa': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title: 'Vườn Quốc gia nào dưới đây nằm ở miền Nam của nước ta ?',
      options: {
        'A. Đà Lạt': false,
        'B. Tam Đảo': false,
        'C. Cúc Phương': false,
        'D. Cát Tiên': true
      },
      answer: 'D',
    ),
    Question(
      id: '7',
      title: 'Loại tảo nào dưới đây có màu xanh lục ?',
      options: {
        'A. Rong mơ': false,
        'B. Tảo xoắn': true,
        'C. Tảo nâu': false,
        'D. Tảo đỏ': false
      },
      answer: 'B',
    ),
    Question(
      id: '8',
      title: 'Rêu thường sống ở',
      options: {
        'A. môi trường nước': false,
        'B. nơi ẩm ướt': true,
        'C. nơi khô ráo': false,
        'D. môi trường khô khí': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Hoạt động nào của cây xanh giúp bổ sung vào bầu khí quyển lượng khí ôxi mất đi do hô hấp và đốt cháy nhiên liệu ?',
      options: {
        'A. Trao đổi khoáng': false,
        'B. Quang hợp': true,
        'C. Chặt cây': false,
        'D. Trồng cây': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'Trong các biện pháp giúp giảm thiểu ô nhiễm và điều hòa khí hậu, biện pháp khả thi, tiết kiệm và mang lại hiệu quả lâu dài nhất là',
      options: {
        'A. Ngưng sản xuất công nghiệp': false,
        'B. Xây dựng hệ thống xử lí chất thải': false,
        'C. Trồng cây ngây rừng': true,
        'D. Di dời các khu chế xuất lên vùng núi': false
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
