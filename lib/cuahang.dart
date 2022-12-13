import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/hometab.dart';

class CuaHang extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CuaHangState();
  }
}

class CuaHangState extends State<CuaHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
        title: Text(
          'Cửa Hàng',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(205, 190, 145, 1),
          ),
        ),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.diamond_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Text('10000'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 100),
                      child: Text(
                        'Mua đáp án',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.diamond_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        '100',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 155),
                      child: Text(
                        '50:50',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.diamond_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        '100',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 450),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeTab()));
                },
                child: Text(
                  'Trở về',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
