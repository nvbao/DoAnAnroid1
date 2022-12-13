import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/friend_object.dart';
import 'package:flutter_doan_demo1/friend_provider.dart';
import 'package:flutter_doan_demo1/friend_screen.dart';

class ChiTietFriend extends StatefulWidget {
  FriendObject? contactd;
  ChiTietFriend({Key? key, this.contactd}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ChiTietlState();
  }
}

class ChiTietlState extends State<ChiTietFriend> {
  var txtName = TextEditingController();
  var txtBietDanh = TextEditingController();
  FriendObject? contactDT;
  @override
  void initState() {
    super.initState();
    if (this.widget.contactd != null) {
      contactDT = this.widget.contactd;
      txtName.text = contactDT!.name;
      txtBietDanh.text = contactDT!.bietdanh;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contactDT == null ? 'Thêm Bạn' : 'Thông Tin Chi Tiết'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: txtName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Tên Bạn',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: txtBietDanh,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'ID',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: () /* async */ {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FriendScreen()));
                  /* //thêm mới
                  if (contactDT == null) {
                    FriendObject con = FriendObject(
                        name: txtName.text, bietdanh: txtBietDanh.text);
                    await FriendProvider.insertContact(con);
                  } else {
                    Navigator.pop(context);
                  } */
                }, //sẽ bổ sung
                child: Text('Trờ về'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
