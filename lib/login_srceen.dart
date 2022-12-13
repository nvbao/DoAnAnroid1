import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/forget_srceen.dart';
import 'package:flutter_doan_demo1/hometab.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Nhập'),
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
              'Đăng Nhập',
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
                  labelText: 'Nhập email',
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
                  labelText: 'Nhập password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final _user = _auth.signInWithEmailAndPassword(
                      email: txtEmail.text, password: txtPass.text);
                  _auth.authStateChanges().listen((event) {
                    if (_user != null) {
                      txtEmail.clear();
                      txtPass.clear();
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        'home',
                        (route) => false,
                      );
                    } else {
                      final snackBar = SnackBar(
                          content: Text('Email hoặc Mật khẩu không đúng'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                } catch (e) {
                  final snackBar =
                      SnackBar(content: Text('Lỗi kết nối đến server'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text(
                'Đăng Nhập',
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
