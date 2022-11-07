import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(80),
        decoration: BoxDecoration(
          //hình làm backgroud
          image: DecorationImage(
            image: AssetImage("images/trithuc.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 100),
              child: const Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: const Text(
                'Trắc nghiệm',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Online',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, // bổ sung đến đăng ký
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromARGB(255, 255, 98, 0)),
                child: const Text('Ready Go!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
