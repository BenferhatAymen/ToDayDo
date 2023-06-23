import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task.dart';

import '../providers/tasks_provider.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[400],
            )),
        TextField(
          autofocus: true,
          onChanged: ((value) {
            newTaskTitle = value;
          }),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              Provider.of<TaskListProvider>(context, listen: false).addTask(
                  TaskWidget(
                      isChecked: false, taskTitle: newTaskTitle ?? "New Task"));
              Navigator.pop(context);
            },
            child: Text("Add"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white))
      ]),
    );
  }
}
