import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/profile.dart';
import 'package:flutter_doan_demo1/profile_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class HomeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeTabState();
  }
}

class HomeTabState extends State<HomeTab> {
  int _selectedIndex = 1;
  void OntabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> lsScreen = [
    ProfileScreen(),
    TrangChuScreen(),
    FieldScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: OntabSelected,
        selectedItemColor: Colors.black,
        // backgroundColor: Colors.black12,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
            label: 'Hồ sơ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.black,
            ),
            label: 'Trang chu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.diamond_outlined,
              color: Colors.black,
            ),
            label: 'Đấu',
          ),
        ],
      ),

      body: lsScreen[_selectedIndex], //Bổ sung 4
    );
  }
}
