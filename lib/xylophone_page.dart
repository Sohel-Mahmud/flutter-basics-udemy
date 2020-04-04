import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Xylophone'),
      ),
      body: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.red, soundNumber: 1),
          buildKey(color: Colors.green, soundNumber: 2),
          buildKey(color: Colors.blue, soundNumber: 3),
          buildKey(color: Colors.yellow, soundNumber: 4),
          buildKey(color: Colors.pink, soundNumber: 5),
          buildKey(color: Colors.purple, soundNumber: 6),
          buildKey(color: Colors.orange, soundNumber: 7),
        ],
      ),
    );
  }
}
