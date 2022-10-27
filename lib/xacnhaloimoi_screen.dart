import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/choicungban_screen.dart';
import 'package:flutter_doan_demo1/moiban_screen.dart';

class XacNhapLoiMoiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Xác nhận lời mời',
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
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(35),
                    child: Text(
                      'Bạn L mời bạn vào cũng chơi trắc nghiệm',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChoiCungBanScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor:
                                    Color.fromARGB(224, 226, 85, 8)),
                            child: const Text(
                              'Đồng ý',
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
                                      builder: (context) => MoiBanScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor:
                                    Color.fromARGB(224, 226, 85, 8)),
                            child: const Text(
                              'Từ chối',
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
