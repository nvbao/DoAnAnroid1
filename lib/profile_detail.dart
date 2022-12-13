import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfileDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileDetailState();
  }
}

class ProfileDetailState extends State<ProfileDetail> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtAge = TextEditingController();
  TextEditingController txtId = TextEditingController();

  CollectionReference user = FirebaseFirestore.instance.collection('users');
  final _auth = FirebaseAuth.instance.currentUser!.email;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //chữ căn giữa
        title: const Text(
          'Thông TinHồ Sơ',
          style: TextStyle(color: Color.fromRGBO(205, 190, 145, 1)),
        ),
        backgroundColor: Color.fromRGBO(30, 35, 40, 1),
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
                children: snapshot.data!.docs.map((user) {
                  return Center(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 100),
                          height: 500,
                          width: 444,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 140, 100),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: txtName,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    labelText: "Tên",
                                    hintText: txtName.text = user['name'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: txtEmail,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    labelText: "Email",
                                    hintText: txtEmail.text = user['email'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: txtPhone,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    labelText: "Số điện thoại",
                                    hintText: txtPhone.text = user['phone'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: txtId,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    labelText: "ID",
                                    hintText: txtId.text = user['id'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: txtAge,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    labelText: "Tuổi",
                                    hintText: txtAge.text = user['age'],
                                  ),
                                ),
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (txtName.text.isNotEmpty) {
                                      final String name = txtName.text.trim();
                                      var collection = FirebaseFirestore
                                          .instance
                                          .collection('users');
                                      collection
                                          .doc(user.id)
                                          .update({'name': name});
                                    }
                                    if (txtId.text.isNotEmpty) {
                                      final String phone = txtPhone.text.trim();
                                      var collection = FirebaseFirestore
                                          .instance
                                          .collection('users');
                                      collection
                                          .doc(user.id)
                                          .update({'phone': phone});
                                    }
                                    if (txtId.text.isNotEmpty) {
                                      final String tuoi = txtAge.text.trim();
                                      var collection = FirebaseFirestore
                                          .instance
                                          .collection('users');
                                      collection
                                          .doc(user.id)
                                          .update({'age': tuoi});
                                    }

                                    if (txtId.text.isNotEmpty) {
                                      final String ID = txtId.text.trim();
                                      var collection = FirebaseFirestore
                                          .instance
                                          .collection('users');
                                      collection
                                          .doc(user.id)
                                          .update({'id': ID});
                                    }
                                  },
                                  child: const Text("Update"),
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
          return const Text('No data');
        },
      ),
    );
  }
}
