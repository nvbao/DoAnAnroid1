import 'package:flutter/material.dart';

class QuyenTroGiup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuyenTroGiupState();
  }
}

class QuyenTroGiupState extends State<QuyenTroGiup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          backgroundColor: Color.fromARGB(223, 243, 167, 126),
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  //chuyen qua quyền trợ giúp
                                }, // bổ sung đâng nhập
                                //đổi màu cái nút
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(120, 50),
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 98, 0)),
                                child: const Text(
                                  'Mua Đáp Án',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  //chuyen qua quyền trợ giúp
                                }, // bổ sung đâng nhập
                                //đổi màu cái nút
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(120, 50),
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 98, 0)),
                                child: const Text(
                                  '50:50',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            /* SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('Mua Đáp Án'),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: const Text('50:50'),
                                  ),*/
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      });
                }, // bổ sung đâng nhập
                //đổi màu cái nút
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                    backgroundColor: Color.fromARGB(255, 255, 98, 0)),
                child: const Text(
                  'Quyền trợ giúp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
