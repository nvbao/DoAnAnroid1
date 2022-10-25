import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/modedialy_screen.dart';
import 'package:flutter_doan_demo1/modegiaoduc_screen.dart';
import 'package:flutter_doan_demo1/modehoahoc_screen.dart';
import 'package:flutter_doan_demo1/modelichsu_screen.dart';
import 'package:flutter_doan_demo1/modesinhhoc_screen.dart';
import 'package:flutter_doan_demo1/modetienganh_screen.dart';
import 'package:flutter_doan_demo1/modetoan_screen.dart';
import 'package:flutter_doan_demo1/modevatly_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class FieldScreen extends StatelessWidget {
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
              margin: const EdgeInsets.only(top: 140, left: 120, right: 20),
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
                                            ModeToanScreen()));
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
                                            ModeDiaLyScreen()));
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
                                            ModeVatLyScreen()));
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
                                            ModeGiaoDucScreen()));
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
                                            ModeHoaHocScreen()));
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
                                            ModeTiengAnhScreen()));
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
                                            ModeLichSuScreen()));
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
                                            ModeSinhHocScreen()));
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
            //Container chứa hồ sơ, trang chủ ,đấu
            Container(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 70,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Hồ sơ',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 190, 145, 1),
                            fontSize: 20,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(30, 35, 40, 1))),
                        onPressed: () {
                          // action on pressed
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 70,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Trang chủ',
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
                                  builder: (context) => TrangChuScreen()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 70,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Đấu',
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
                                  builder: (context) => FieldScreen()));
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
    );
  }
}
