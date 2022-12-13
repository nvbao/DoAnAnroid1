import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/hometab.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class ResultScreen extends StatelessWidget {
  final int diem;
  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  const ResultScreen({
    Key? key,
    required this.diem,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 4, 62, 110),
      content: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Image.asset(
              'images/cup.jpg',
              width: 200,
              height: 140,
              fit: BoxFit.fill,
            ), */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kết Quả',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              child: Text(
                '$result/$questionLength',
                style: TextStyle(fontSize: 30, color: Colors.yellow),
              ),
              radius: 70,
              backgroundColor: result == questionLength
                  ? Colors.green
                  : result < questionLength / 2
                      ? Colors.red
                      : result == questionLength / 2
                          ? Color.fromARGB(255, 243, 64, 222)
                          : Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Điểm: $diem',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              result == questionLength / 2
                  ? 'Cố gắng thêm nhé!!'
                  : result < questionLength / 2
                      ? 'Chúc bạn may mắn lần sau!!'
                      : 'Rất xuất sắc!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onPressed,
                  child: Text(
                    'Chơi Lại',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(padding: EdgeInsets.all(6)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeTab()));
                  },
                  child: Text(
                    'Trang Chủ',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    /*return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Kết Quả',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Chúc mừng bạn đã hoàn thành',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(224, 226, 85, 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Số câu: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(224, 226, 85, 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Thời gian: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(224, 226, 85, 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Tổng điểm: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 150,
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FieldScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor:
                                    Color.fromARGB(224, 226, 85, 8)),
                            child: const Text(
                              'Tiếp tục',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 150,
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeTab()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor:
                                    Color.fromARGB(224, 226, 85, 8)),
                            child: const Text(
                              'Trang chủ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}
