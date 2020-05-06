import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  onPressed: () {},
                  child: Text(
                    'Add Task',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ]),
        ),
      ),
    );
  }
}
