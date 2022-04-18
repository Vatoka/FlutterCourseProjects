import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) async {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(Color color, int number) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (() {
            playSound(number);
          }),
          style: TextButton.styleFrom(primary: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.orange, 1),
              buildKey(Colors.yellow, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.teal, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.purple, 6)
            ],
          ),
        ),
      ),
    );
  }
}
