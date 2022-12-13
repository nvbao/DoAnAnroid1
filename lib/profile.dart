import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/caidatchung_screen.dart';
import 'package:flutter_doan_demo1/cuahang.dart';
import 'package:flutter_doan_demo1/friend_screen.dart';
import 'package:flutter_doan_demo1/lichsudau_screen.dart';
import 'package:flutter_doan_demo1/profile_detail.dart';
import 'package:flutter_doan_demo1/xephang_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  final _auth = FirebaseAuth.instance.currentUser!.email;
  String name = "Name loading...";
  String email = "Email loading...";
  /* void getData() async{
    User? user = await FirebaseAuth.instance.currentUser;
        var vari =FirebaseFirestore.instance.collection("users").doc(user!.uid).get();
Map<String,dynamic> userData = vari as Map<String,dynamic>;
      
    name = userData['name'];
    email = userData['email'];

  } */

  /* void initState(){
    getData();
    super.initState();
  } */

  @override
  Widget build(BuildContext context) {
    CollectionReference user = FirebaseFirestore.instance.collection('users');

    /* StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        } */

    /* return  ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot user = snapshot.data!.docs[index];
                return ListTile(
                  leading: Image.network(users['image']),
                  title: Text(users['name']),
                  subtitle: Text(user['uid']),
                );
              } */
    /* children: snapshot.data.docs.map((DocumentSnapshot document) {
            return new ListTile(
              title: new Text(document.data()['']),
              subtitle: new Text(document.data()['']),
            );
          }).toList(), */
    //);
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
      body: StreamBuilder(
        stream: user.where('email', isEqualTo: _auth).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
            ),
            child: Container(
              child: ListView(
                children: snapshot.data!.docs.map((e) {
                  return Center(
                    child: Column(
                      children: [
                        Container(
                          child: Card(
                            color: Color.fromARGB(255, 235, 140, 100),
                            child: ListTile(
                              leading: CircleAvatar(),
                              title: Text("Tên: " + e['name']),
                              subtitle: Text("id: " + e['id']),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileDetail()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 85,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LichSuDau()));
                                        },
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(200, 50),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                      width: 85,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XepHangScreen()));
                                        },
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(200, 50),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                      width: 85,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CuaHang()));
                                        },
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(200, 50),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              'Cửa Hàng',
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
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 80,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FriendScreen()));
                                        },
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(200, 50),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CaiDatScreen()));
                                        },
                                        //đổi màu cái nút
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(200, 50),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
