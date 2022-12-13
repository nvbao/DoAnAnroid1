import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/home_quiztoan.dart';

class ChoiCungBanScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChoiCungBanScreenState();
  }
}

class ChoiCungBanScreenState extends State<ChoiCungBanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Chơi cùng bạn',
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
              child: Column(
                children: [
                  //container chứa 2 người đấu
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 140, 100),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 80,
                                      color: Colors.white,
                                    ),
                                    Text("B",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35))
                                  ],
                                ),
                              ),
                              Text(
                                'VS',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 80,
                                    ),
                                    Text(
                                      "L",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 35),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //container chứa 5 cái card
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //  margin: EdgeInsets.all(20.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          'Lĩnh vực:  Toán',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // margin: EdgeInsets.all(20.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          'Số câu hỏi: 10 câu',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // margin: EdgeInsets.all(20.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          'Thời gian: 1 phút',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionToanScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor:
                                    Color.fromARGB(255, 255, 98, 0)),
                            child: const Text(
                              'Bắt đầu',
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
