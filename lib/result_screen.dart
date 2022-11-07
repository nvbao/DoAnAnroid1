import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                      builder: (context) => TrangChuScreen()));
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
    );
  }
}
