import 'package:flutter/material.dart';
import 'package:todoey/widgets/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0, left: 30.0),
      child: ListView(
        children: [
          Task(
            task: 'Task one goes here',
          ),
          Task(
            task: 'Task two goes here',
          ),
          Task(
            task: 'Task three goes here',
          ),
          Task(
            task: 'Task four goes here',
          ),
        ],
      ),
    );
  }
}
