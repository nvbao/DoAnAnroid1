import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/profile_screen.dart';

class TrangChuScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TrangChuScreenState();
  }
}

class TrangChuScreenState extends State<TrangChuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Trang Chủ',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Tìm Kiếm',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
