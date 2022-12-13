import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSinhScreen extends StatefulWidget {
  const QuestionSinhScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSinhScreen();
  }
}

class _QuestionSinhScreen extends State<QuestionSinhScreen> {
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
      title: 'Cơ thể người được chia làm mấy phần? Đó là những phần nào?',
      options: {
        '3 phần: đầu, thân và chân': false,
        '2 phần: đầu và thân': false,
        '3 phần: đầu, thân và các chi': true,
        '3 phần: đầu, cổ và thân': false
      },
    ),
    Question(
      id: '2',
      title:
          'Khi chúng ta bơi cật lực, hệ cơ quan nào dưới đây sẽ tăng cường độ hoạt động ?',
      options: {
        'Hệ tuần hoàn': false,
        'Hệ hô hấp': false,
        'Hệ vận động': false,
        'Tất cả các phương án còn lại': true
      },
    ),
    Question(
      id: '3',
      title: 'Thực quản là bộ phận của hệ cơ quan nào sau đây?',
      options: {
        'Hệ hô hấp': false,
        'Hệ tiêu hóa': true,
        'Hệ tuần hoàn': false,
        'Hệ bài tiết': false
      },
    ),
    Question(
      id: '4',
      title:
          'Khi mất khả năng dung nạp chất dinh dưỡng, cơ thể chúng ta sẽ trở nên kiệt quệ, đồng thời khả năng vận động cũng bị ảnh hưởng nặng nề. Ví dụ trên phản ánh điều gì ?',
      options: {
        'Các hệ cơ quan trong cơ thể có mối liên hệ mật thiết với nhau': true,
        'Dinh dưỡng là thành phần thiết yếu của cơ và xương': false,
        'Hệ thần kinh và hệ vận động đã bị hủy hoại hoàn toàn do thiếu dinh dưỡng':
            false,
        'Tất cả các phương án đưa ra': false
      },
    ),
    Question(
      id: '5',
      title: 'Da là nơi đi đến của hệ cơ quan nào dưới đây ?',
      options: {
        'Hệ tuần hoàn': false,
        'Hệ thần kinh': false,
        'Hệ bài tiết': false,
        'Tất cả các phương án còn lại': true
      },
    ),
    Question(
      id: '6',
      title: 'Cơ nào dưới đây ngăn cách khoang ngực và khoang bụng',
      options: {
        'Cơ hoành': true,
        'Cơ ức đòn chũm ': false,
        'Cơ liên sườn': false,
        'Cơ nhị đầu': false
      },
    ),
    Question(
      id: '7',
      title: 'Thanh quản là một bộ phận của',
      options: {
        'hệ hô hấp': true,
        'hệ tiêu hóa': false,
        'hệ bài tiết': false,
        'hệ sinh dục': false
      },
    ),
    Question(
      id: '8',
      title:
          'Vai trò tiếp nhận và trả lời kích thích của môi trường, điều hòa hoạt động các cơ quan là của hệ cơ quan nào?',
      options: {
        'Hệ vận động': false,
        'Hệ tuần hoàn': false,
        'Hệ bài tiết': false,
        'Hệ thần kinh': true
      },
    ),
    Question(
      id: '9',
      title: 'Các cơ quan trong hệ hô hấp là:',
      options: {
        'Phổi và thực quản': false,
        'Đường dẫn khí và thực quản': false,
        'Thực quản, đường dẫn khí và phổi': false,
        'Phổi, đường dẫn khí và thanh quản': true
      },
    ),
    Question(
      id: '10',
      title: 'Trao đổi chất của cơ thể và môi trường được thực hiện qua:',
      options: {
        'Hệ hô hấp': false,
        'Hệ tuần hoàn': false,
        'Hệ tiêu hóa': false,
        'Hệ hô hấp, hệ tiêu hóa, hệ bài tiết': true
      },
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
                                                  content: Text('Đáp án lả: '),
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
    /* return FutureBuilder(
      future: _question as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              backgroundColor: Color.fromARGB(255, 4, 76, 135),
              appBar: AppBar(
                //title: Text('Câu hỏi'),
                //centerTitle: true,
                backgroundColor: Color.fromARGB(255, 4, 76, 135),
                shadowColor: Colors.transparent,
                actions: [
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      'Đúng: $score',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              body: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    QuestionWidget(
                        indexAction: index,
                        question: extractedData[index].title,
                        totalQuestions: extractedData.length),
                    const Divider(
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    for (int i = 0;
                        i < extractedData[index].options.length;
                        i++)
                      GestureDetector(
                        onTap: () => checkAnswerAndUpdate(
                            extractedData[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          color: isPressed
                              ? extractedData[index]
                                          .options
                                          .values
                                          .toList()[i] ==
                                      true
                                  ? Colors.green
                                  : Colors.red
                              : Colors.white,
                        ),
                      ),
                  ],
                ),
              ),
              floatingActionButton: GestureDetector(
                onTap: () => nextQuestion(extractedData.length),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: NextQuestion(),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Vui Lòng Đợi 1 xíu !!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(
          child: Text('Không có dữ liệu!!'),
        );
      },
    ); */
  }
}
