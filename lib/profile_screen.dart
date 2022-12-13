/* import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/caidatchung_screen.dart';
import 'package:flutter_doan_demo1/friend_screen.dart';
import 'package:flutter_doan_demo1/lichsudau_screen.dart';
import 'package:flutter_doan_demo1/xephang_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
        title: const Text(
          'Hồ sơ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(205, 190, 145, 1),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.orange,
                  ),
                ),
                title: Text('L'),
                subtitle: Text('id của bạn là: 123456'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 350,
              width: 444,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 140, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LichSuDau()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timelapse_outlined,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Lịch Sử Đấu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => XepHangScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.workspace_premium_outlined,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Xếp hạng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ),
                              Text(
                                "Cửa hàng",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FriendScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Bạn bè',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          /* decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),*/
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CaiDatScreen()));
                            },
                            //đổi màu cái nút
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Cài đặt',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
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
 */