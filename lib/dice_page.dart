import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  DicePage();

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('My Page'),
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

  @override
  void setState(fn) {
    super.setState(fn);
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
                  print('dice 1 pressed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    print('dice 2 pressed');
                  },
                  child: Image.asset('images/dice2.png')),
            ),
          ],
        ),
      );
  }
}
