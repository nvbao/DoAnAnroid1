import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/hometab.dart';

class LichSuDau extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LichSuDauState();
  }
}

class LichSuDauState extends State<LichSuDau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
        title: Text(
          'Lịch Sử Đấu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(205, 190, 145, 1),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //Thắng 1
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Chiến Thắng',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Lịch Sử',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Số câu đúng 10/10',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        '1000 Điểm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Thua 2
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Color.fromARGB(255, 246, 120, 111),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Thất Bại',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Tiếng Anh',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Số câu đúng 5/10',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '500 Điểm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Thắng 3
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Chiến Thắng',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Hóa Học',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Số câu đúng 8/10',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        '800 Điểm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Thắng 4
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Chiến Thắng',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Địa Lý',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Số câu đúng 9/10',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        '900 Điểm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Thua 5
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Color.fromARGB(255, 246, 120, 111),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Thất Bại',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Toán',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Số câu đúng 3/10',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '300 Điểm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeTab()));
                },
                child: Text(
                  'Trở về',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
