import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';

class ForgetScreen extends StatelessWidget {
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
                'Đăng ký',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    // borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Họ và tên',
                  fillColor: Colors.white,
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
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
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
                decoration: InputDecoration(
                  labelText: 'Xác nhận mật khẩu',
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Đăng ký'),
                          content: Text(
                              'Bạn đã đăng ký thành công hãy đăng nhập để trải nghiệm ứng dụng nhé! '),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK')),
                          ],
                        );
                      });
                }, // bổ sung đăng ký
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
