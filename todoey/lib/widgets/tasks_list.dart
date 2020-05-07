import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return Padding(
        padding: EdgeInsets.only(right: 30.0, left: 30.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              name: task.name,
              isChecked: task.isDone,
              toggleCheckboxState: (checkboxState) {
                taskData.toggleTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        ),
      );
    });
  }
}
