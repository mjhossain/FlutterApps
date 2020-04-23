import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.wColor, this.childCard});

  final Color wColor;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: wColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
