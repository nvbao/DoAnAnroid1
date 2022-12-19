import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/hometab.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';

class ResultScreen extends StatelessWidget {
  final int diem;
  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  const ResultScreen({
    Key? key,
    required this.diem,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 4, 62, 110),
      content: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Image.asset(
              'images/cup.jpg',
              width: 200,
              height: 140,
              fit: BoxFit.fill,
            ), */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.grade_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kết Quả',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              child: Text(
                '$result/$questionLength',
                style: TextStyle(fontSize: 30, color: Colors.yellow),
              ),
              radius: 70,
              backgroundColor: result == questionLength
                  ? Colors.green
                  : result < questionLength / 2
                      ? Colors.red
                      : result == questionLength / 2
                          ? Color.fromARGB(255, 243, 64, 222)
                          : Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Điểm: $diem',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              result == questionLength / 2
                  ? 'Cố gắng thêm nhé!!'
                  : result < questionLength / 2
                      ? 'Chúc bạn may mắn lần sau!!'
                      : 'Rất xuất sắc!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onPressed,
                  child: Text(
                    'Chơi Lại',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(padding: EdgeInsets.all(6)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeTab()));
                  },
                  child: Text(
                    'Trang Chủ',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
