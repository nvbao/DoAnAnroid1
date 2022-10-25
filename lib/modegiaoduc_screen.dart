import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/leveldauthuong_screen.dart';
import 'package:flutter_doan_demo1/levelxephang_screen.dart';

class ModeGiaoDucScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Giáo dục',
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
              margin: const EdgeInsets.all(120),
              //  alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(50),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Đấu thường',
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
                                      LevelDauThuongScreen()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Xếp hạng',
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
                                  builder: (context) => LevelXepHangScreen()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Container chứa hồ sơ, trang chủ ,đấu
            Container(
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
                          // action on pressed
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
