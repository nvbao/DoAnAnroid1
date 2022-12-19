import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionDiaTB extends StatefulWidget {
  const QuestionDiaTB({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionDiaTB();
  }
}

class _QuestionDiaTB extends State<QuestionDiaTB> {
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
      title: 'Môi trường sống của con người bao gồm?',
      options: {
        'A. Môi trường không khí, môi trường nước và môi trường đất': false,
        'B. Môi trường tự nhiên, môi trường nhân tạo và môi trường xã hội':
            true,
        'C. Môi trường tự nhiên, môi trường nước và môi trường đất': false,
        'D. Môi trường nhận tạo, môi trường nước và môi trường không khí': false
      },
      answer: 'B',
    ),
    Question(
      id: '2',
      title: 'Chức năng nào dưới đây không phải của môi trường địa lí?',
      options: {
        'A. Là nơi chứa đựng cái phế thả do con người tạo ra': false,
        'B. Là nguồn cung cấp tài nguyên thiên nhiên': false,
        'C. Là không gian sinh sống của con người': false,
        'D. Là nơi tồn tại các quy luật tự nhiên': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title:
          'Vai trò quyết định sự phát triển của xã hội loài người thuộc về yếu tố',
      options: {
        'A. Môi trường tự nhiên': false,
        'B. Môi trường nhân tạo và môi trường xã hội': false,
        'C. Phương thức sản xuất, gồm cả sức sản xuất và quan hệ sản xuất':
            true,
        'D. Môi trường tự nhiên và môi trường xã hội': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title: 'Phải bảo vệ môi trường vì',
      options: {
        'A. Môi trường có quan hệ trực tiếp đến sự tồn tại và phát triển của xã hội con người':
            true,
        'B. Môi trường có quan hệ trực tiếp đến sự tồn tại và phát triển của xã hội loài vật':
            false,
        'C. Môi trường có quan hệ trực tiếp đến sự tồn tại và phát triển của xã hội thực vật':
            false,
        'D. Tất cả các ý trên': false
      },
      answer: 'A',
    ),
    Question(
      id: '5',
      title: 'Trong ngành chăn nuôi, vật nuôi chính là',
      options: {
        'A. Heo': false,
        'B. Bò': true,
        'C. Gà': false,
        'D. Cừu': false
      },
      answer: 'B',
    ),
    Question(
      id: '6',
      title: 'Ngành nuôi trồng thủy sản đang phát triển theo hướng',
      options: {
        'A. Nuôi quãng canh để đỡ chi phí thức ăn': false,
        'B. Nuôi công nghiệp đại tà': false,
        'C. Nuôi đặc sản và thực phẩm cao cấp có giá trị kinh tế cao': true,
        'D. Nuôi thâm canh đỡ chi phí ban đầu': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title: 'Điểm giống nhau về vai trò của ngành thủy sản và chăn nuôi là',
      options: {
        'A. Cung cấp nguồn thực phẩm giàu dinh dưỡng cho con người': true,
        'B. Cung cấp sức kéo cho nông nghiệp': false,
        'C. Là nguồn phân bón cho trồng trọt': false,
        'D. Không sử dụng làm nguyên liệu cho công nghiệp chế biến': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title:
          'Hình thức chăn nuôi nào sau đây là biểu hiện của nền nông nghiệp hiện đại?',
      options: {
        'A. Chăn nuôi thủ công': false,
        'B. Chăn nuôi công nghiệp': true,
        'C. Chăn nuôi tự nhiên': false,
        'D. Chăn nuôi chuồng trại': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Cơ sở thức ăn cho chăn nuôi đã có những tiến bộ vượt bậc là nhờ vào',
      options: {
        'A. Thành tựu khoa học kĩ thuật': true,
        'B. Kinh nghiệm từ sản xuất của con người': false,
        'C. Sự thuận lợi của điều kiện tự nhiên': false,
        'D. Lực lượng lao động dồi dào': false
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
