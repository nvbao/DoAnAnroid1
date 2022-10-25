import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/forget_srceen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'Đăng nhập',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  labelText: 'Tên đăng nhập',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),

                  //đổi màu viền
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(3),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
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
                          builder: (context) => TrangChuScreen()));
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Đăng nhập'),
                          content: Text('Bạn đã đăng nhập thành công'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK')),
                          ],
                        );
                      });
                }, // bổ sung đâng nhập
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromARGB(224, 226, 85, 8)),
                child: const Text('Đăng Nhập'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgetScreen()));
                }, // bổ sung đến đăng ký
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromARGB(224, 226, 85, 8)),
                child: const Text('Đăng Ký'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
