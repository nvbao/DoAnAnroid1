import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/home_quizanh.dart';
import 'package:flutter_doan_demo1/home_quizdia.dart';
import 'package:flutter_doan_demo1/home_quizgiaoduc.dart';
import 'package:flutter_doan_demo1/home_quizhoa.dart';
import 'package:flutter_doan_demo1/home_quizly.dart';
import 'package:flutter_doan_demo1/home_quizsinh.dart';
import 'package:flutter_doan_demo1/home_quizsu.dart';
import 'package:flutter_doan_demo1/home_quiztoan.dart';
import 'package:flutter_doan_demo1/modedialy_screen.dart';
import 'package:flutter_doan_demo1/modegiaoduc_screen.dart';
import 'package:flutter_doan_demo1/modehoahoc_screen.dart';
import 'package:flutter_doan_demo1/modelichsu_screen.dart';
import 'package:flutter_doan_demo1/modesinhhoc_screen.dart';
import 'package:flutter_doan_demo1/modetienganh_screen.dart';
import 'package:flutter_doan_demo1/modetoan_screen.dart';
import 'package:flutter_doan_demo1/modevatly_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class FieldScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FieldScreenState();
  }
}

class FieldScreenState extends State<FieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Chọn lĩnh vực',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          //hình làm backgroud
          image: DecorationImage(
            image: AssetImage("images/trithuc.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 140, left: 70, right: 40),
              //  alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //container chứa toán và địa lý
                  Container(
                    //  padding: EdgeInsets.all(150),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Toán',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionToanScreen()));
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Địa lý',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionDiaScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //container chứa vật lý và giáo dục
                  Container(
                    // padding: EdgeInsets.all(5),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Vật lý',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionLyScreen()));
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Giáo dục',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionGiaoDucScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //container chứa hóa học và tiếng anh
                  Container(
                    // padding: EdgeInsets.all(5),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Hóa Học',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionHoaScreen()));
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Tiếng Anh',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionAnhScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //container chứa lịch sử và sinh học
                  Container(
                    // padding: EdgeInsets.all(5),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Lịch Sử',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionSuScreen()));
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: TextButton(
                              child: Text(
                                'Sinh Học',
                                style: TextStyle(
                                  color: Color.fromRGBO(205, 190, 145, 1),
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(30, 35, 40, 1))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuestionSinhScreen()));
                              },
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
    );
  }
}
