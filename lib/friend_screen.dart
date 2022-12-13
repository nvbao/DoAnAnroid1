import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/friend_chitiet.dart';
import 'package:flutter_doan_demo1/friend_detail.dart';

import 'package:flutter_doan_demo1/friend_object.dart';
import 'package:flutter_doan_demo1/friend_provider.dart';
import 'package:flutter_doan_demo1/moiban_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class FriendScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FriendScreenState();
  }
}

class FriendScreenState extends State<FriendScreen> {
  List<FriendObject> lsContacts = [];
  void _LoadDanhSachContact() async {
    final data = await FriendProvider.getAllContacts();
    setState(() {
      lsContacts = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSachContact();
  }

  Widget _PopupMenu(FriendObject contact) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.edit),
            title: Text('Thông Tin Bạn Bè'),
            //  subtitle: Text('Cập nhật thông tin ${contact.name}'),
            onTap: () {
              //Bổ sung sau
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChiTietFriend(
                            contactd: contact,
                          )));
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('Mời chơi'),
            // subtitle: Text('Mời ${contact.name} chơi trả lời câu hỏi'),
            onTap: () {
              //Bổ sung sau
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoiBanScreen()));
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text('Xóa Bạn'),
            // subtitle: Text('Xóa Bạn ${contact.name}'),
            onTap: () {
              //Bổ sung sau
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Xóa Bạn'),
                      content: Text('Vui lòng xác nhận xóa' +
                          ' ${contact.name} ' +
                          'khỏi danh sách bạn bè ?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Hủy bỏ'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            if (contact != null) {
                              FriendProvider.deleteContact(contact.id!);
                              _LoadDanhSachContact();
                            }
                          },
                          child: Text('Xóa'),
                        ),
                      ],
                    );
                  });
            },
          ),
        ),
      ],
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Bạn bè',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
      ),
      body: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 650,
              color: Color.fromARGB(255, 235, 140, 100),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 235, 140, 100),
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Tìm Kiếm',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Bảo',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('giao lưu vui vẻ'),
                      subtitle: Text('ID:01271'),
                      trailing: _PopupMenu(), //bổ sung menupop
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Lợi',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('chơi là biết'),
                      subtitle: Text('ID:01270'),
                      trailing: null, //bs menupop
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    //padding: EdgeInsets.all(200),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'Anh',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text('lính mới'),
                      subtitle: Text('ID:01371'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ); */
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tìm Kiếm',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
                onTap: () {},
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
        ),
        padding: EdgeInsets.all(5),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: lsContacts.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(
                        '${lsContacts[index].name.substring(0, 1).toUpperCase()}'),
                  ),
                  title: Text('${lsContacts[index].name}'),
                  subtitle: Text('${lsContacts[index].bietdanh}'),
                  trailing: _PopupMenu(lsContacts[index]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendDetail(),
                    ),
                  ).then((value) => {_LoadDanhSachContact()});
                },
                child: Icon(Icons.person_add_alt_1_outlined),
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
