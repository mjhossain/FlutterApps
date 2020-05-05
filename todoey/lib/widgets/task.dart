import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  Task({@required this.task});

  final String task;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(
          task,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Checkbox(value: false, onChanged: null),
      ),
    );
  }
}
