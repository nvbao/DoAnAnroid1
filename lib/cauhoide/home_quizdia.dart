import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/quyentrogiup.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionDiaScreen extends StatefulWidget {
  const QuestionDiaScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionDiaScreen();
  }
}

class _QuestionDiaScreen extends State<QuestionDiaScreen> {
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
          'Thành phần tự nhiên bị biến đổi mạnh do hoạt động canh tác, xây dựng các công trình thủy lợi của con người là?',
      options: {
        'A. Khí hậu': false,
        'B. Nguồn nước': false,
        'C. Địa hình': true,
        'D. Sinh vật': false
      },
      answer: 'C',
    ),
    Question(
      id: '2',
      title:
          'Hoạt động sản xuất công nghiệp diễn ra mạnh mẽ nhất ở khu vực nào sau đây?',
      options: {
        'A. Đông Nam Á': false,
        'B. Bắc Phi': false,
        'C. Bắc Mĩ': true,
        'D. Trung Á': false
      },
      answer: 'C',
    ),
    Question(
      id: '3',
      title:
          'Hoạt động nào sau đây làm gia tăng diện tích đất hoang hóa ở vùng đồi núi?',
      options: {
        'A. Cày sâu bừa kĩ': false,
        'B. Cải tạo đất phèn, đất mặn': false,
        'C. Chặt phá rừng bừa bãi': true,
        'D. Làm ruộng bậc thang': false
      },
      answer: 'C',
    ),
    Question(
      id: '4',
      title:
          'Biện pháp nào sau đây không có vai trò trong hạn chế tình trạng ngập lụt và hạn hán trong sản xuất nông nghiệp ở vùng đồng bằng?',
      options: {
        'A. Xây dựng hồ chứa nước': false,
        'B. Xây dựng hệ thống đê điều': false,
        'C. Làm ruộng bậc thang': false,
        'D. Đào kênh dẫn nước': true
      },
      answer: 'D',
    ),
    Question(
      id: '5',
      title: 'Hoạt động nào sau đây góp phần nâng cao độ phì của đất?',
      options: {
        'A. Bón phân cải tạo đất': true,
        'B. Sử dụng thuốc trừ sâu': false,
        'C. Khai thác khoáng sản': false,
        'D. Khai thác rừng': false
      },
      answer: 'A',
    ),
    Question(
      id: '6',
      title:
          'Việc xây dựng các công trình thủy điện có tác động lớn nhất đến thành phần tự nhiên nào sau đây?',
      options: {
        'A. Bầu không khí': false,
        'B. Động, thực vật': false,
        'C. Dòng chảy sông ngòi': true,
        'D. Đất đai': false
      },
      answer: 'C',
    ),
    Question(
      id: '7',
      title:
          'Các hoạt động sản xuất của con người ngày nay không có đặc điểm nào?',
      options: {
        'A. Ngày càng đa dạng hơn': false,
        'B. Tác động ngày càng nhiều đến tự nhiên': false,
        'C. Không gây ảnh hưởng xấu đến tự nhiên': true,
        'D. Thay đổi tùy theo các môi trường địa lí': false
      },
      answer: 'C',
    ),
    Question(
      id: '8',
      title:
          'Hoạt động nông nghiệp phổ biến ở những quốc gia có khí hậu ôn đới là?',
      options: {
        'A. Trồng lúa mì, chăn nuôi cừu': true,
        'B. Trồng lúa gạo, chăn nuôi trâu bò': false,
        'C. Trồng cây công nghiệp, chăn nuôi trâu bò': false,
        'D. Trồng lúa gạo và lúa mì': false
      },
      answer: 'A',
    ),
    Question(
      id: '9',
      title:
          'Hoạt động nông nghiệp ở các nước phát triển thường có đặc điểm là',
      options: {
        'A. Sử dụng công cụ thô sơ': false,
        'B. Sử dụng máy móc hiện đại': true,
        'C. Sản xuất trên quy mô nhỏ': false,
        'D. Sản xuất để tự cung cấp nông sản': false
      },
      answer: 'B',
    ),
    Question(
      id: '10',
      title: 'Xu thế phát triển của ngành nông nghiệp hiện nay là?',
      options: {
        'A. Sản xuất ít các sản phẩm nông sản': false,
        'B. Sử dụng ngày càng nhiều máy móc và phân bón': true,
        'C. Sản xuất tự cung tự cấp nông sản': false,
        'D. Sản xuất không gây ảnh hưởng đến tự nhiên': false
      },
      answer: 'B',
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
