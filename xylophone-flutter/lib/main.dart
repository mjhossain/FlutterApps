import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  player.play('note1.wav');
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  player.play('note2.wav');
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  player.play('note3.wav');
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  player.play('note4.wav');
                },
              ),
              FlatButton(
                color: Colors.cyan,
                onPressed: () {
                  player.play('note5.wav');
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  player.play('note6.wav');
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  player.play('note7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
