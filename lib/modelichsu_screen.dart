import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/leveldauthuong_screen.dart';
import 'package:flutter_doan_demo1/levelxephang_screen.dart';

class ModeLichSuScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ModeLichSuScreenState();
  }
}

class ModeLichSuScreenState extends State<ModeLichSuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Lịch sử',
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
              margin: const EdgeInsets.only(top: 190),
              //  alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 100,
                      width: 150,
                      child: TextButton(
                        child: Text(
                          'Đấu thường',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 190, 145, 1),
                            fontSize: 25,
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
                    padding: EdgeInsets.all(25),
                    child: SizedBox(
                      height: 100,
                      width: 150,
                      child: TextButton(
                        child: Text(
                          'Xếp hạng',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 190, 145, 1),
                            fontSize: 25,
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
              padding: EdgeInsets.only(top: 170),
            ),
          ],
        ),
      ),
    );
  }
}
