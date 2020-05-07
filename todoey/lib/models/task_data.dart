import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy something'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleTaskState();
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
