import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionGDTB extends StatefulWidget {
  const QuestionGDTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionGDTB();
  }
}

class _QuestionGDTB extends State<QuestionGDTB> {
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
      title: 'Vai trò của Điều ước quốc tế với pháp luật quốc tế là ',
      options: {
        'A. một bộ phận': true,
        'B. một bộ nhớ': false,
        'C. một cơ quan': false,
        'D. một tổ chức': false
      },
      answer: 'A',
    ),
    Question(
      id: '2',
      title: 'Cơ sở pháp lí để thực hiện có hiệu quả quá trình hợp tác là',
      options: {
        'A. Văn bản quy phạm pháp luật': false,
        'B. Luật': false,
        'C. Hiến pháp': false,
        'D. Pháp luật': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title:
          'Liên hợp quốc ra Tuyên ngôn toàn thế giới về quyền con người vào ngày',
      options: {
        'A. 11/12/1948': false,
        'B. 12/10/1948': false,
        'C. 10/12/1948': true,
        'D. 10/12/1949': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title: 'Đường lối đối ngoại của nước ta là',
      options: {
        'A. Sau phản ứng, chất rắn màu đen chuyển thành đỏ': true,
        'B. Sau phản ứng, chất rắn màu đen chuyển thành xanh lam': false,
        'C. Có chất khí bay lên': false,
        'D. Không có hiện tượng': false
      },
      answer: 'A',
    ),
    Question(
      id: '5',
      title: 'Tên gọi khác của chất khử là:',
      options: {
        'A. Hòa bình, hợp tác và tôn trọng lẫn nhau': false,
        'B. Hòa bình, hữu nghị và hợp tác': true,
        'C. Hòa bình, hữu nghĩ cùng pháp triển': false,
        'D. Hòa bình, hợp tác, cùng pháp triển': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title: 'Tổ chức Giáo dục, Khoa học và văn hóa của Liên hợp quốc là?',
      options: {
        'A. UNDP': false,
        'B. CEPT': false,
        'C. UNESCO': true,
        'D. UNICEF': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title:
          'Công dân từ bao nhiêu tuổi trở lên có quyền bầu cử đại biểu Quốc hội và Hội đồng nhân dân ?',
      options: {
        'A. Từ đủ 18 tuổi': true,
        'B. Từ đủ 19 tuổi': false,
        'C. Từ đủ 20 tuổi': false,
        'D. Từ đủ 21 tuổi': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title: 'Người nào dưới đây không được thực hiện quyền bầu cử ?',
      options: {
        'A. Người đang bị tình nghi vi phạm pháp luật': false,
        'B. Người đang phải chấp hành phạt tù': true,
        'C. Người đang ốm nằm điều trị ở nhà': false,
        'D. Hgười đang đi công tác xa nhà': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title: 'Ai dưới đây có quyền khiếu nại ?',
      options: {
        'A. Mọi cá nhân tổ chức': true,
        'B. Có tiền là có quyền': false,
        'C. Những người từ 20 tuổi': false,
        'D. Chỉ những người có chức quyền của nhà nước': false
      },
      answer: 'A',
    ),
    Question(
      id: '10',
      title:
          'Mọi công dân đủ 18 tuổi trở lên đều được tham gia bầu cử, trừ các trường hợp đặc biệt bị pháp luật cấm là nội dung của nguyên tắc bầu cử nào dưới đây ?',
      options: {
        'A. Bình đẳng': false,
        'B. Trực tiếp': false,
        'C. Phổ thông': true,
        'D. Bỏ phiếu kín': false
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
