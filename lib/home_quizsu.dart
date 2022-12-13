import 'package:flutter/material.dart';
//import 'package:flutter_doan_demo1/db_connect.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/nextquestion.dart';
import 'package:flutter_doan_demo1/option_card.dart';
import 'package:flutter_doan_demo1/question_model.dart';
import 'package:flutter_doan_demo1/question_widget.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionSuScreen extends StatefulWidget {
  const QuestionSuScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionSuScreen();
  }
}

class _QuestionSuScreen extends State<QuestionSuScreen> {
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
          'Trước khi thực dân Pháp nổ súng xâm lược vào năm 1858, Việt Nam vẫn là',
      options: {
        'một quốc gia độc lập, có chủ quyền': true,
        'một vùng tự trị của Trung Hoa': false,
        'một quốc gia tự do': false,
        'một vùng ảnh hưởng của Trung Hoa': false
      },
    ),
    Question(
      id: '2',
      title:
          'Vào giữa thế kỉ XIX, chế độ phong kiến Việt Nam đang ở trong tình trạng như thế nào?',
      options: {
        'hình thành và hoàn thiện mô hình bước đầu': false,
        'đang ở trong giai đoạn khủng hoảng suy yếu nghiêm trọng': true,
        'được củng cố vững chắc và phát triển hưng thịnh': false,
        'một lực lượng sản xuất mới - tư bản chủ nghĩa đang hình trong lòng xã hội phong kiến':
            false
      },
    ),
    Question(
      id: '3',
      title: 'Cuộc khởi nghĩa tiêu biểu nhất của phong trào Cần Vương là',
      options: {
        'Khởi nghĩa Ba Đình': false,
        'Khởi nghĩa Bãi Sậy': false,
        'Khởi nghĩa Hùng Lĩnh': false,
        'Khởi nghĩa Hương Khê': true
      },
    ),
    Question(
      id: '4',
      title:
          'Nhân tố nào dẫn đến sự chuyển biến kinh tế - xã hội Việt Nam trong những năm cuối thế kỉ XIX - đầu thế kỉ XX?',
      options: {
        'Chương trình khai thác thuộc địa lần thứ nhất của thực dân Pháp': true,
        'Chiến tranh thế giới thứ nhất bùng nổ': false,
        'Thực dân Pháp hoàn thành quá trình bình định Việt Nam': false,
        'Tư tưởng dân chủ tư sản được du nhập vào Việt Nam': false
      },
    ),
    Question(
      id: '5',
      title:
          'Đâu không phải lý do khiến thực dân Pháp xúc tiến xâm lược Việt Nam từ giữa thế kỉ XIX?',
      options: {
        'Do nhu cầu về nguồn nguyên liệu, nhân công, thị trường của tư bản Pháp':
            false,
        'Do chế độ phong kiến Việt Nam đang lâm vào tình trạng khủng hoảng':
            true,
        'Ưu thế của Pháp ở Việt Nam khi giành thắng lợi ở chiến tranh Canada':
            false,
        'Do sự giàu có về tài nguyên của Việt Nam': false
      },
    ),
    Question(
      id: '6',
      title:
          'Cuộc kháng chiến chống thực dân Pháp của nhân dân Việt Nam cuối thế kỉ XIX thất bại xuất phát từ nguyên nhân khách quan nào?',
      options: {
        'Cuộc kháng chiến diễn ra thiếu sự chuẩn bị chu đáo': false,
        'Không tập hợp đoàn kết được đông đảo nhân dân tham gia đấu tranh':
            false,
        'So sánh tương quan lực lượng chênh lệch bất lợi cho Việt Nam': true,
        'Thiếu sự đoàn kết quốc tế': false
      },
    ),
    Question(
      id: '7',
      title:
          'Sau hiệp ước Hác-măng và Pa-tơ-nốt, tính chất xã hội Việt Nam có sự chuyển biến như thế nào?',
      options: {
        'Là một nước phụ thuộc vào thực dân Pháp': false,
        'Là một nước thuộc địa': false,
        'Là một nước thuộc địa nửa phong kiến': true,
        'Là một nước nửa thuộc địa nửa phong kiến': false
      },
    ),
    Question(
      id: '8',
      title:
          'Sự thất bại của phong trào nào ở cuối thế kỉ XIX chứng tỏ độc lập dân tộc không gắn liền với chế độ phong kiến?',
      options: {
        'Phong trào Cần Vương': true,
        'Phong trào nông dân Yên Thế': false,
        'Cuộc đấu tranh của đồng bào dân tộc thiểu số': false,
        'Khởi nghĩa Thái Nguyên': false
      },
    ),
    Question(
      id: '9',
      title:
          'Cuộc khởi nghĩa vũ trang lớn và kéo dài nhất trong phong trào chống Pháp cuối thế kỉ XIX - đầu thế kỉ XX là',
      options: {
        'Khởi nghĩa Hương Khê': false,
        'Khởi nghĩa Yên Thế': true,
        'Khởi nghĩa ở vùng Tây Bắc và hạ lưu sông Đà': false,
        'Khởi nghĩa của đồng bào Tây Nguyên': false
      },
    ),
    Question(
      id: '10',
      title:
          'Ý nào sau đây không phản ánh đúng đặc điểm của phong trào yêu nước Việt Nam đầu thế kỉ XX?',
      options: {
        'Giành độc lập dân tộc theo con đường dân chủ tư sản': false,
        'Diễn ra theo 2 phương pháp: bạo động và cải cách': false,
        'Đều bị thực dân Pháp đàn áp': false,
        'Do tầng lớp tư sản, tiểu tư sản lãnh đạo': true
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
