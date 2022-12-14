import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/forget_srceen.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipOval(
              child: Image.asset(
                'images/logoCauHoi.png',
                // fit: BoxFit.cover,
              ),
            ),
            /* Container(
              margin: EdgeInsets.all(5),
              height: 200.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //set border radius to 50% of square height and width
                image: DecorationImage(
                  image: AssetImage('images/logoCauHoi.png'),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ), */
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Câu Hỏi Trắc Nghiệm Online',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Đăng Nhập',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 255, 98, 0))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetScreen(),
                  ),
                ).then((value) {
                  if (value != null) {
                    final snackBar = SnackBar(content: Text(value));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
              },
              child: const Text(
                'Đăng Ký',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 98, 0))),
            ),
          ],
        ),
      ),
    );
  }
}
