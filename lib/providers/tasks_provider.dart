import 'package:flutter/cupertino.dart';
import 'package:todoapp/widgets/task.dart';

class TaskListProvider extends ChangeNotifier {
  List<TaskWidget> tasks = [];

  void addTask(task) {
    tasks.add(task);
    notifyListeners();
  }

  deleteTask(task) {
    tasks.remove(task);
    notifyListeners();
  }
}
