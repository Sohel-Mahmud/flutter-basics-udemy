import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatelessWidget {
  DicePage();

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('DICEE'),
        backgroundColor: Colors.red,
      ),
      body: DiceChange(),
    );
  }
}

class DiceChange extends StatefulWidget {
  @override
  _DiceChangeState createState() => _DiceChangeState();
}

class _DiceChangeState extends State<DiceChange> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  void changeDIceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
      print('dice $leftDiceNumber pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //expanded used to equally set the image by ur screen size
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDIceFace();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDIceFace();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
