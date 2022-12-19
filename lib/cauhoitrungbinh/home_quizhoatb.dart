import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionHoaTB extends StatefulWidget {
  const QuestionHoaTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionHoaTB();
  }
}

class _QuestionHoaTB extends State<QuestionHoaTB> {
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
      title: 'Tính chất nào sau đây không có ở Hiđro',
      options: {
        'A. nặng hơn không khí': true,
        'B. nhẹ nhất trong các chất khí': false,
        'C. không màu': false,
        'D. tan rất ít trong nước': false
      },
      answer: 'A',
    ),
    Question(
      id: '2',
      title: 'Ứng dụng của Hiđro là',
      options: {
        'A. Oxi hóa kim loại': false,
        'B. Tạo hiệu ứng nhà kính': false,
        'C. Tạo mưa axit': false,
        'D. Làm nguyên liệu sản xuất NH3, HCL, chất hữu cơ': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title: 'Công thức hóa học của khí hiđro là:',
      options: {'A. H2O': false, 'B. H3': false, 'C. H2': true, 'D. H': false},
      answer: 'C',
    ),
    Question(
      id: '4',
      title: 'Sau phản ứng của CuO và H2 thì có hiện tượng gì:',
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
        'A. Chất oxi hóa': false,
        'B. Chất bị oxi hóa': true,
        'C. Chất bị khử': false,
        'D. Chất nhường oxi cho chất khác': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title: 'Chọn đáp án đúng',
      options: {
        'A. Chất lỏng là chất chiếm oxi cho chất khác': false,
        'B. Chất đốt là chất chiếm oxi cho chất khác': false,
        'C. Chất khử là chất chiếm oxi cho chất khác': true,
        'D. Chất oxi hóa là chất chiếm oxi cho chất khác': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title: 'Tại sao bệnh nhân lại cần đến ống thở khi hô hấp không ổn định',
      options: {
        'A. Lưu thông máu': false,
        'B. Cung cấp nước': false,
        'C. Cung cấp oxi': true,
        'D. Giảm đau': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title: 'Khí nào nặng nhất trong các khí sau',
      options: {
        'A. CH4': false,
        'B. CO2': true,
        'C. N2': false,
        'D. H2': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Điền từ còn thiếu vào chỗ trống" Trong 1 phản ứng hóa học ..... khối lượng của các chất sản phẩm bằng tổng khối lượng của các chất tham gia phản ứng"',
      options: {
        'A. Tổng': true,
        'B. Hiệu': false,
        'C. Tích': false,
        'D. Thương': false
      },
      answer: 'A',
    ),
    Question(
      id: '10',
      title:
          'Vì sao nung đá vôi thì khối lượng chất rắn sau phản ứng giảm so với ban đầu?',
      options: {
        'A. Vì xuất hiện kết tủa': false,
        'B. Vì có sự tham gia của oxi': false,
        'C. Vì sau phản ứng có khí thoát ra': true,
        'D. Vì xuất hiện vôi sống': false
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
