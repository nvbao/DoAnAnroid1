import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/home_quiztoan.dart';
import 'package:flutter_doan_demo1/moiban_screen.dart';

class RegimeTrungBinhToanScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegimeTrungBinhToanScreenState();
  }
}

class RegimeTrungBinhToanScreenState extends State<RegimeTrungBinhToanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Trung bình',
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
              padding: EdgeInsets.only(top: 190),
              //  alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Chơi đơn',
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
                                  builder: (context) => QuestionToanScreen()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      height: 80,
                      width: 120,
                      child: TextButton(
                        child: Text(
                          'Mời bạn',
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
                                  builder: (context) => MoiBanScreen()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Container chứa hồ sơ, trang chủ ,đấu
            Container(
              padding: EdgeInsets.only(top: 150),
            ),
          ],
        ),
      ),
    );
  }
}
