import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionLyScreen extends StatefulWidget {
  const QuestionLyScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionLyScreen();
  }
}

class _QuestionLyScreen extends State<QuestionLyScreen> {
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
          'Dụng cụ để xác định sự nhanh chậm của chuyển động của một vật gọi là',
      options: {
        'vôn kế': false,
        'nhiệt kế': false,
        'tốc kế': true,
        'ampe kế': false
      },
    ),
    Question(
      id: '2',
      title:
          'Độ lớn của vận tốc có thể cung cấp cho ta thông tin gì về chuyển động của vật?',
      options: {
        'Cho biết hướng chuyển động của vật': false,
        'Cho biết vật chuyển động theo quỹ đạo nào': false,
        'Cho biết vật chuyển động nhanh hay chậm': true,
        'Cho biết nguyên nhân vì sao vật lại chuyển động được': false
      },
    ),
    Question(
      id: '3',
      title:
          'Chuyển động của phân tử hiđro ở 0°C có vận tốc 1692 m/s, của vệ tinh nhân tạo của Trái Đất có vận tốc 28800 km/h. Hỏi chuyển động nào nhanh hơn?',
      options: {
        'Chuyển động của phân tử hiđro nhanh hơn': false,
        'Chuyển động của vệ tinh nhân tạo của Trái Đất nhanh hơn': true,
        'Hai chuyển động bằng nhau': false,
        'Tất cả đều sai': false
      },
    ),
    Question(
      id: '4',
      title: 'Đơn vị của vận tốc phụ thuộc vào:',
      options: {
        'đơn vị chiều dài': false,
        'đơn vị thời gian': false,
        'đơn vị chiều dài và đơn vị thời gian': true,
        'các yếu tố khác': false
      },
    ),
    Question(
      id: '5',
      title:
          'Trái Đất quay quanh Mặt Trời một vòng trong thời gian một năm (trung bình là 365 ngày). Biết vận tốc quay của Trái Đất bằng 108000 km/h. Lấy π ≈ 3,14 thì giá trị trung bình bán kính quỹ đạo của Trái Đất quanh Mặt Trời là:',
      options: {
        '145 000 000 km': false,
        '150 000 000 km': false,
        '150 649 682 km': true,
        '149 300 000 km': false
      },
    ),
    Question(
      id: '6',
      title:
          'Trong đêm tối từ lúc thấy tia chớp lóe sáng đến khi nghe thấy tiếng bom nổ khoảng 15 giây. Hỏi chỗ bom nổ cách người quan sát bao xa? Biết vận tốc truyền âm trong không khí bằng 340 m/s.',
      options: {
        '5100 m': true,
        '5000 m': false,
        '5200 m': false,
        '5300 m': false
      },
    ),
    Question(
      id: '7',
      title:
          'Một máy bay bay với vận tốc 800 km/h từ Hà Nội đến Thành phố Hồ Chí Minh. Nếu đường bay Hà Nội – Hồ Chí Minh dài 1400 km thì máy bay phải bay trong bao nhiêu lâu?',
      options: {
        '1 giờ 20 phút': false,
        '1 giờ 30 phút': false,
        '1 giờ 45 phút': true,
        '2 giờ': false
      },
    ),
    Question(
      id: '8',
      title:
          'Trong các công thức biểu diễn mối quan hệ giữa S, v, t sau đây công thức nào đúng?',
      options: {
        'S = v/t': false,
        't = v/S': false,
        't = S/v': true,
        'S = t/v': false
      },
    ),
    Question(
      id: '9',
      title: 'Độ dịch chuyển là',
      options: {
        'độ dài quãng đường vật di chuyển': false,
        'khoảng cách mà vật di chuyển theo một hướng xác định': true,
        'khoảng cách giữa vị trí xuất phát và vị trí kết thúc quá trình di chuyển':
            false,
        'tỉ số giữa quãng đường và thời gian di chuyển': false
      },
    ),
    Question(
      id: '10',
      title:
          'Một bạn học sinh đạp xe từ nhà đến trường hết thời gian 30 phút. Biết quãng đường từ nhà đến trường dài 3 km thì tốc độ trung bình của bạn là bao nhiêu?',
      options: {
        '90 km/h': false,
        '0,1 km/h': false,
        '10 km/h': false,
        '6 km/h': true
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
