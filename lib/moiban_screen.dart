import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/choicungban_screen.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';
import 'package:flutter_doan_demo1/xacnhaloimoi_screen.dart';

class MoiBanScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MoiBanScreenState();
  }
}

class MoiBanScreenState extends State<MoiBanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Mời bạn',
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
              color: Colors.white54,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Tìm bạn theo tên',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                      onTap: () {
                        //Bổ sung 3
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 50,
              width: 500,
              /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XacNhapLoiMoiScreen()));
                },
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Text(
                      'Lợi nè',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 50,
              width: 500,
              /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XacNhapLoiMoiScreen()));
                },
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Text(
                      'Bảo nè',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Container chứa hồ sơ, trang chủ ,đấu
            Container(
              margin: const EdgeInsets.only(top: 450),
            ),
          ],
        ),
      ),
    );
  }
}
