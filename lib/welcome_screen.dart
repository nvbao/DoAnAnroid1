import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget txtSection = Container(
      padding: const EdgeInsets.all(100),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                'Welcome',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                'Trắc nghiệm',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                'Online',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, // bổ sung đến đăng ký
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromARGB(224, 226, 85, 8)),
                child: const Text('Ready Go!'),
              ),
            ),
          ],
        ),
      ),
    );
    return MaterialApp(
      title: 'Câu Hỏi Trắc Nghiệm',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            //hình làm backgroud
            image: DecorationImage(
              image: AssetImage("images/trithuc.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              txtSection,
            ],
          ),
        ),
      ),
    );
  }
}
