import 'package:flutter/material.dart';

class Question1Srceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Text(
              'Kết thúc',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/trithuc.jpg'), fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
