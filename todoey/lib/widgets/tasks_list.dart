import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({this.taskList});

  final List<Task> taskList;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0, left: 30.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            name: widget.taskList[index].name,
            isChecked: widget.taskList[index].isDone,
            toggleCheckboxState: (checkboxState) {
              setState(() {
                widget.taskList[index].toggleTaskState();
              });
            },
          );
        },
        itemCount: widget.taskList.length,
      ),
    );
  }
}
