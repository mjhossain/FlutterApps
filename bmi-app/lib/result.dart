import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondSecondaryColor,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Text('RESULTS'),
    );
  }
}
