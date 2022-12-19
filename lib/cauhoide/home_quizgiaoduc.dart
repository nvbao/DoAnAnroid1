import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionGiaoDucScreen extends StatefulWidget {
  const QuestionGiaoDucScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionGiaoDucScreen();
  }
}

class _QuestionGiaoDucScreen extends State<QuestionGiaoDucScreen> {
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
          'Câu tục ngữ: Anh em như thể tay chân, rách lành đùm bọc dở hay đỡ đần khuyên chúng ta điều gì?',
      options: {
        'A. Anh, em phải đoàn kết, yêu thương lẫn nhau': true,
        'B. Anh, em phải trung thực với nhau': false,
        'C. Anh, em phải lo cho nhau': false,
        'D. Anh, em phải có trách nhiệm với nhau': false
      },
      answer: 'A',
    ),
    Question(
      id: '2',
      title:
          'Quyền và nghĩa vụ của công dân trong gia đình đề cập dến các mối quan hệ nào?',
      options: {
        'A. Cha mẹ và con cái': false,
        'B. Anh chị em': false,
        'C. Ông bà và con cháu': false,
        'D. Cả A,B,C': true
      },
      answer: 'D',
    ),
    Question(
      id: '3',
      title: 'Các hành động thể hiện quyền và nghĩa vụ của cha mẹ là?',
      options: {
        'A. Nuôi dạy con': false,
        'B. Cho con đi học': false,
        'C. Dạy con học bài': false,
        'D. Cả A,B,C': true
      },
      answer: 'D',
    ),
    Question(
      id: '4',
      title: 'Các hành động thể hiện quyền và nghĩa vụ của ông bà là?',
      options: {
        'A. Dạy cháu điều hay lẽ phải': false,
        'B. Chăm sóc các cháu': false,
        'C. Dạy các cháu cách ứng xử, giao tiếp với người ngoài': false,
        'D. Cả A,B,C': true
      },
      answer: 'D',
    ),
    Question(
      id: '5',
      title:
          'Bố và mẹ bất đồng trong quan điểm nuôi dạy con theo cách dạy của Nhật Bản và Việt Nam, ép con phải học theo những thứ mà bố mẹ thích. Việc làm đó nói lên điều gì?',
      options: {
        'A. Bố mẹ không tôn trọng ý kiến của con': true,
        'B. Bố mẹ không tôn trọng con': false,
        'C. Bố mẹ vi phạm pháp luật': false,
        'D. Bố mẹ không có nhận thức đúng đắn': false
      },
      answer: 'A',
    ),
    Question(
      id: '6',
      title: 'Chế độ hôn nhân của nước ta là?',
      options: {
        'A. Bình đẳng, tự nguyện, tiến bộ': false,
        'B. Bình đẳng, một vợ một chồng': false,
        'C. Bình đẳng, tiến bộ, một vợ, một chồng': false,
        'D. Bình đẳng, tự nguyện, tiến bộ, một vợ, một chồng': true
      },
      answer: 'D',
    ),
    Question(
      id: '7',
      title:
          'Quyền và nghĩa vụ của các thành viên trong gia đình được thể hiện rõ nhất tại đâu?',
      options: {
        'A. Luật Hôn nhân và Gia đình': true,
        'B. Luật Trẻ em': false,
        'C. Luật lao động': false,
        'D. Luật chăm sóc và bảo vệ trẻ em': false
      },
      answer: 'A',
    ),
    Question(
      id: '8',
      title: 'Các hành vi: Đánh chửi bố mẹ, vô lễ với ông bà vi phạm điều gì?',
      options: {
        'A. Quyền và nghĩa vụ của cha mẹ': false,
        'B. Quyền và nghĩa vụ của con, cháu': true,
        'C. Quyền và nghĩa vụ của các thành viên trong gia đình': false,
        'D. Quyền và nghĩa vụ của trẻ em': false
      },
      answer: 'B',
    ),
    Question(
      id: '9',
      title:
          'Gia đình K lợi dụng mẹ già chiếm đoạt tài sản, chuyển nhượng sổ đỏ để lấy đất sau đó bán và đưa mẹ chồng vào trại dưỡng lão để không phải trông nom, chăm sóc. Việc làm đó nói lên điều gì ?',
      options: {
        'A. Con cái bất hiếu với cha mẹ': true,
        'B. Con cái yêu thương cha mẹ': false,
        'C. Con cái không tôn trọng cha mẹ': false,
        'D. Con cái tôn trọng cha mẹ': false
      },
      answer: 'A',
    ),
    Question(
      id: '10',
      title:
          'Đối với các hành vi ngược đãi, xúc phạm cha mẹ, ông bà chúng ta cần phải làm gì?',
      options: {
        'A. Lên án, phê phán, tố cáo': true,
        'B. Nêu gương': false,
        'C. Học làm theo': false,
        'D. Mặc kệ vì không liên quan đến mình': false
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
