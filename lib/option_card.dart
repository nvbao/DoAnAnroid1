import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String option;
  final Color color;
  OptionCard({
    Key? key,
    required this.option,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(
          option,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.red != Colors.green ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
