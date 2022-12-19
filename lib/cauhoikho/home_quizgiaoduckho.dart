import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionGDKho extends StatefulWidget {
  const QuestionGDKho({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionGDKho();
  }
}

class _QuestionGDKho extends State<QuestionGDKho> {
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
          'Trong xu hướng toàn cầu hóa, quốc tế hóa hiện nay và để đảm bảo sự lâu dài, hiệu quả mỗi quốc gia nên chọn phát triển theo hướng',
      options: {
        'A. Năng động': false,
        'B. Bền vững': true,
        'C. Sáng tạo': false,
        'D. Liên tục': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title:
          'Để thực hiện chiến lược phát triển bền vững đất nước công cụ, phương tiện được xem là có vai trò nổi bật nhất là',
      options: {
        'A. Pháp luật': true,
        'B. Văn hóa': false,
        'C. Tiền tệ': false,
        'D. Đạo đức': false
      },
      answer: 'A',
    ),
    Question(
      id: '3',
      title:
          'Pháp luật quy định các mức thuế khác nhau đối với các doanh nghiệp, căn cứ vào',
      options: {
        'A. Ngành, nghề, lĩnh vực và địa bàn kinh doanh': true,
        'B. Uy tính của người đứng đầu doanh nghiệp': false,
        'C. Thời gian kinh doanh của doanh nghiệp': false,
        'D. Khả năng kinh doanh của doanh nghiệp': false
      },
      answer: 'A',
    ),
    Question(
      id: '4',
      title:
          'Nhà nước sử dụng các công cụ chủ yếu nào để khuyến khích các hoạt động kinh doanh trong những ngành nghề có lợi cho sự phát triển kinh tế- xã hội của đất nước?',
      options: {
        'A. Tỉ giá ngoại tệ': false,
        'B. Tín dụng': false,
        'C. Lãi xuất ngân hàng': true,
        'D. Thuế': false
      },
      answer: 'C',
    ),
    Question(
      id: '5',
      title:
          'Việc đưa ra các quy định về thuế, pháp luật đã tác động đến lĩnh vực',
      options: {
        'A. Môi trường': false,
        'B. Quốc phòng an ninh': false,
        'C. Văn hóa': false,
        'D. Kinh tế': true
      },
      answer: 'D',
    ),
    Question(
      id: '6',
      title:
          'Công dân được đào tạo trình độ cao dẳng, đại học đã được tạm hoãn gọi nhập ngũ thì độ tuổi gọi nhập ngũ đến hết bao nhiêu tuổi ?',
      options: {
        'A. 25 tuôi': false,
        'B. 26 tuôi': false,
        'C. 27 tuôi': true,
        'D. 28 tuôi': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title:
          'Biện pháp nào dưới đây được nhà nước sử dụng để xóa đói giảm nghèo?',
      options: {
        'A. Tạo ra nhiều việc làm mới': true,
        'B. Chăm sóc sức khỏe cho nhân dân': false,
        'C. Mở rộng các hình thức trợ giúp người nghèo': false,
        'D. Phòng chống tệ nạn xã hội': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title:
          'Hiện nay, để vấn đề gia tăng dân số không ảnh hưởng xấu đến sự phát triển kinh tế, văn hóa, xã hội và môi trường của đất nước, Đảng và nhà nước ta có chủ trương',
      options: {
        'A. Kiềm chế sự gia tăng dân số': false,
        'B. Hạn chế gia tăng dân số': true,
        'C. Giảm mạnh gia tăng dân số': false,
        'D. Không khuyến khích gia tăng dân số': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Công dân có nghĩa vụ thực hiện kế hoạch hóa gia đình; xây dựng quy mô gia đình ít con, no ấm, bình đẳng, tiến bộ, hạnh phúc bền vững là nội dung được quy định trong',
      options: {
        'A. Pháp lệnh dân số': false,
        'B. Luật hôn nhân và gia đình và Pháp lệnh dân số': true,
        'C. Hiến pháp và Luật hôn nhân và gia đình': false,
        'D .Hiến pháp và Pháp lệnh dân số': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title:
          'Công ty A ở tỉnh Cao Bằng và Công ty B ở tỉnh Hải Dương cùng sản xuất vở học sinh, nhưng Công ty A chỉ đóng thuế thu nhập doanh nghiệp với mức thấp hơn Công ty B. Căn cứ vào yếu tố nào dưới đây mà hai công ty lại có hai mức thuế khác nhau ?',
      options: {
        'A. Địa bàn kinh doanh': true,
        'B. Lợi nhuận thu được': false,
        'C. Quan hệ quen biết': false,
        'D. Khả năng kinh doanh': false
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
