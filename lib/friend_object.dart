class FriendObject {
  final int? id;
  final String name;
  // ignore: non_constant_identifier_names
  final String bietdanh;
  //Khởi tạo đối tượng
  // ignore: non_constant_identifier_names
  FriendObject({this.id, required this.name, required this.bietdanh});
  //Chuyển thông tin sang đối tượng contact
  FriendObject.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        bietdanh = res["bietdanh"];

  //Chuyển từ đối tượng sang các thông tin
  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'bietdanh': bietdanh};
  }
}
