import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$leftDice.png'),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$rightDice.png'),
              )),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          SizedBox(
            width: 200.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Text(
                'Roll',
                style: TextStyle(
                  fontSize: 35.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
