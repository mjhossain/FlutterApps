import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.name, this.isChecked, this.toggleCheckboxState});

  final bool isChecked;
  final String name;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: toggleCheckboxState,
          activeColor: Colors.green,
        ),
      ),
    );
  }
}
