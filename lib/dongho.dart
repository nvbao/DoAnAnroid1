import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_doan_demo1/questionnext_screen.dart';

class OtpTimer extends StatefulWidget {
  @override
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 15;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 15).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 15).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick == timerMaxSeconds) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QuestionNextScreen()));
        }
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.timer,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          timerText,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
