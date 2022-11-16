import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';

class ForgetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgetScreenState();
  }
}

class ForgetScreenState extends State<ForgetScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Ký Tài Khoản'),
      ),
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
            const Text(
              'Câu Hỏi Trắc Nghiệm Online',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 6),
              child: TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, bottom: 12),
              child: TextField(
                controller: txtPass,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final newUser = _auth.createUserWithEmailAndPassword(
                      email: txtEmail.text, password: txtPass.text);
                  if (newUser != null) {
                    Navigator.pop(context, 'Đăng Ký Thành Công!');
                  } else {
                    final snackBar =
                        SnackBar(content: Text('Tài khoản này không hợp lệ!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                } catch (e) {
                  final snackBar = SnackBar(content: Text('Có lỗi xảy ra!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
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
