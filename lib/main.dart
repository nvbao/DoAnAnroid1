import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/field_screen.dart';
import 'package:flutter_doan_demo1/forget_srceen.dart';
import 'package:flutter_doan_demo1/leveldauthuong_screen.dart';
import 'package:flutter_doan_demo1/login_srceen.dart';
import 'package:flutter_doan_demo1/modetoan_screen.dart';
import 'package:flutter_doan_demo1/moiban_screen.dart';
import 'package:flutter_doan_demo1/question_screen.dart';
import 'package:flutter_doan_demo1/regimede_screen.dart';
import 'package:flutter_doan_demo1/trangchu_screen.dart';
import 'package:flutter_doan_demo1/welcome_screen.dart';

void main() => runApp(DoAnApp());

class DoAnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: // QuestionScreen(),
          // MoiBanScreen(),
          //RegimeDeScreen(),
          // LevelDauThuongScreen(),
          //TrangChuScreen(),
          //ModeToanScreen(),
          //  FieldScreen(),
          //ForgetScreen(),
          // LoginScreen(),
          WelcomeScreen(),
    );
  }
}
