import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Câu Hỏi',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: const TextField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  labelText: '90s',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Color.fromARGB(224, 226, 85, 8)),
                      child: const Text(
                        'Quyền trợ giúp',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Color.fromARGB(224, 226, 85, 8)),
                      child: const Text(
                        'Kết thúc',
                        textAlign: TextAlign.center,
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
            //Khung câu hỏi
            Container(
              padding: EdgeInsets.all(50),
            ),

            //đáp án
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'A:',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'B:',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'C:',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'D:',
                        //  textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //tiếp
            Container(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  // bổ sung tiếp
                },
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromARGB(224, 226, 85, 10)),
                child: const Text(
                  'Tiếp',
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
    );
  }
}
