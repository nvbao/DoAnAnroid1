import 'dart:convert';

import 'package:flutter_doan_demo1/friend_object.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FriendProvider {
  //Khởi tạo csdl
  static Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'contactdb.db');
    Database db = await openDatabase(path, version: 1, onCreate: _oncreate);
    return db;
  }

  static void _oncreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE IF NOT EXISTS Contacts (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, bietdanh TEXT NOT NULL)");
  }

  //Thêm contact
  static Future<void> insertContact(FriendObject con) async {
    Database db = await initDatabase();
    db.insert('Contacts', con.toMap());
  }

  //lấy danh sách
  static Future<List<FriendObject>> getAllContacts() async {
    List<FriendObject> lsResult = [];
    //kết nối CSDL
    Database db = await initDatabase();
    //thao tác truy vấn
    List<Map<String, Object?>> ls = await db.query('Contacts');
    lsResult = ls.map((e) => FriendObject.fromMap(e)).toList();
    return lsResult;
  }

  //Cập nhật liên hệ
  static Future<void> updateContact(FriendObject con) async {
    //kết nối csdl
    Database db = await initDatabase();
    final data = {'name': con.name, 'bietdanh': con.bietdanh};
    //cập nhật
    await db.update('Contacts', data, where: 'id=?', whereArgs: [con.id]);
  }

  //xóa liên hệ
  static Future<void> deleteContact(int id) async {
    //kết nối csdl
    Database db = await initDatabase();
    await db.delete('Contacts', where: 'id=?', whereArgs: [id]);
  }

  //lấy liên hệ theo id
  static Future<List<FriendObject>> getContact(int id) async {
    List<FriendObject> lsResult = [];
    //kết nối csdl
    Database db = await initDatabase();
    //thao tác truy vấn
    List<Map<String, Object?>> ls =
        await db.query('Contacts', where: 'id=?', whereArgs: [id]);
    lsResult = ls.map((e) => FriendObject.fromMap(e)).toList();
    return lsResult;
  }
}
