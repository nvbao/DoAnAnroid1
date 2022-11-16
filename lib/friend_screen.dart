import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class FriendScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FriendScreenState();
  }
}

class FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Bạn bè',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
      ),
      body: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 650,
              color: Color.fromARGB(255, 235, 140, 100),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 235, 140, 100),
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
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Bảo',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('giao lưu vui vẻ'),
                      subtitle: Text('ID:01271'),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Lợi',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('chơi là biết'),
                      subtitle: Text('ID:01270'),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Anh',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('lính mới'),
                      subtitle: Text('ID:01371'),
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
