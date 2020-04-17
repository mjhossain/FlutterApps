import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('I am poor'),
        ),
        // Image by https://icons8.com
        body: Center(
          child: Image(image: AssetImage('images/poor.png')),
        ),
      )),
    );
