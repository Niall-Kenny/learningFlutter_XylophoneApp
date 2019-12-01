import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = new AudioCache();

  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber, MaterialColor color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
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
            children: <Widget>[
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.teal),
              buildKey(noteNumber: 6, color: Colors.blue),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
