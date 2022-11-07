import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/dongho.dart';
import 'package:flutter_doan_demo1/result_screen.dart';

class QuestionNextScreen extends StatelessWidget {
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
            Card(
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20.0),
              child: Container(
                child: Row(children: [OtpTimer()]),
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
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                backgroundColor:
                                    Color.fromARGB(255, 235, 140, 100),
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        //chuyen qua quyền trợ giúp
                                      }, // bổ sung đâng nhập
                                      //đổi màu cái nút
                                      style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(120, 50),
                                          backgroundColor:
                                              Color.fromARGB(224, 226, 85, 8)),
                                      child: const Text(
                                        'Mua Đáp Án',
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
                                          backgroundColor:
                                              Color.fromARGB(255, 255, 98, 0)),
                                      child: const Text(
                                        '50:50',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  /* SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('Mua Đáp Án'),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('50:50'),
                                  ),*/
                                  SimpleDialogOption(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Close'),
                                  ),
                                ],
                              );
                            });
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Color.fromARGB(255, 255, 98, 0)),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen()));
                      },
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Color.fromARGB(255, 255, 98, 0)),
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
              height: 130,
              child: Card(
                color: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                // margin: EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Câu 2: Quê của thầy là ở đâu?',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //đáp án
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'A: Quảng Trị',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'B: Quảng Bình',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'C:Quảng Ngãi',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        //chuyen qua quyền trợ giúp
                      }, // bổ sung đâng nhập
                      //đổi màu cái nút
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(450, 50),
                          backgroundColor: Color.fromRGBO(30, 35, 40, 1)),
                      child: const Text(
                        'D:Quảng Ninh',
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
                    backgroundColor: Color.fromARGB(255, 255, 98, 0)),
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
