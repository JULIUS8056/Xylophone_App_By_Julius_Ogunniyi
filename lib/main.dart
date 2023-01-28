import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$noteNumber.wav'));
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
            buildKey(color: Colors.green[800], noteNumber: 1),
            buildKey(color: Colors.red, noteNumber: 2),
            buildKey(color: Colors.yellow, noteNumber: 3),
            buildKey(color: Colors.purple, noteNumber: 4),
            buildKey(color: Colors.orange, noteNumber: 5),
            buildKey(color: Colors.teal, noteNumber: 6),
            buildKey(color: Colors.green, noteNumber: 7),
          ],
        )),
      ),
    );
  }
}
