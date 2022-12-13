import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/regimedetoan_screen.dart';
import 'package:flutter_doan_demo1/regimekhotoan_screen.dart';
import 'package:flutter_doan_demo1/regimetrungbinhtoan_screen.dart';

class LevelDauThuongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Đấu thường',
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
              padding: EdgeInsets.only(top: 50),
              margin: const EdgeInsets.all(120),
              //  alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Dễ',
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
                                  builder: (context) => RegimeDeToanScreen()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Trung bình',
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
                                      RegimeTrungBinhToanScreen()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Khó',
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
                                  builder: (context) => RegimeKhoToanScreen()));
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
