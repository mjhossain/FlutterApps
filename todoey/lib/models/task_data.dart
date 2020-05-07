import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy something'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
