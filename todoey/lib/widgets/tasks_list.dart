import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy oranges'),
    Task(name: 'Buy fruits'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0, left: 30.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            name: tasks[index].name,
            isChecked: tasks[index].isDone,
            toggleCheckboxState: (checkboxState) {
              setState(() {
                tasks[index].toggleTaskState();
              });
            },
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}
