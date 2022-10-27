import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(205, 190, 145, 1),
          backgroundColor: Color.fromRGBO(30, 35, 40, 1),
          selectedIconTheme: IconThemeData(
            color: Color.fromRGBO(205, 190, 145, 1),
            size: 24,
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Hồ sơ'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
            BottomNavigationBarItem(icon: Icon(Icons.room), label: 'Đấu'),
          ]),
      body: Container(
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SwitchListTile(
                              title: Text('Âm thanh'),
                              secondary: Icon(Icons.volume_down),
                              value: _toggled1,
                              onChanged: (value) {
                                setState(() => _toggled1 = value);
                              }),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SwitchListTile(
                              title: Text('Thông báo'),
                              secondary: Icon(Icons.notifications_outlined),
                              value: _toggled2,
                              onChanged: (value) {
                                setState(() => _toggled2 = value);
                              }),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            leading: Icon(Icons.logout),
                            title: Text('Đăng xuất'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            leading: Icon(Icons.delete),
                            title: Text('Xóa tài khoản'),
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
