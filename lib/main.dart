import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: FlatButton(
            onPressed: onPressBall,
            child: Image.asset("images/ball$ballNum.png")),
      ),
    );
  }

  void onPressBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
}
