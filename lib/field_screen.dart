import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/chedo/chedoanh.dart';
import 'package:flutter_doan_demo1/chedo/chedodia.dart';
import 'package:flutter_doan_demo1/chedo/chedogiaoduc.dart';
import 'package:flutter_doan_demo1/chedo/chedohoa.dart';
import 'package:flutter_doan_demo1/chedo/chedoly.dart';
import 'package:flutter_doan_demo1/chedo/chedosinh.dart';
import 'package:flutter_doan_demo1/chedo/chedosu.dart';
import 'package:flutter_doan_demo1/chedo/chedotoan.dart';
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
                                        builder: (context) => CheDoToan()));
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
                                        builder: (context) => CheDoDia()));
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
                                        builder: (context) => CheDoLy()));
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
                                        builder: (context) => CheDoGiaoDuc()));
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
                                        builder: (context) => CheDoHoa()));
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
                                        builder: (context) => CheDoAnh()));
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
                                        builder: (context) => CheDoSu()));
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
                                        builder: (context) => CheDoSinh()));
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
