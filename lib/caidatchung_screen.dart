import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/welcome_screen.dart';

class CaiDatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CaiDatScreenState();
  }
}

class CaiDatScreenState extends State<CaiDatScreen> {
  bool _toggled1 = false;
  bool _toggled2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
        title: const Text(
          'Cài đặt chung',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(205, 190, 145, 1),
          ),
        ),
      ),
      body: Container(
        // padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // padding: const EdgeInsets.all(50),
              height: 400,
              width: 800,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 250,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SwitchListTile(
                              title: Text(
                                'Âm thanh',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              secondary: Icon(
                                Icons.volume_down,
                                color: Colors.black,
                              ),
                              value: _toggled1,
                              onChanged: (value) {
                                setState(() => _toggled1 = value);
                              }),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SwitchListTile(
                              title: Text(
                                'Thông báo',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              secondary: Icon(
                                Icons.notifications_outlined,
                                color: Colors.black,
                              ),
                              value: _toggled2,
                              onChanged: (value) {
                                setState(() => _toggled2 = value);
                              }),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                          'Bạn có muốn đăng xuất khỏi ứng dụng!!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('NO'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WelcomeScreen()));
                                          },
                                          child: Text('YES'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.black,
                                ),
                                Padding(padding: EdgeInsets.only(left: 50)),
                                Text(
                                  'Đăng xuất',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ],
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
