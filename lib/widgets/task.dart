import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tasks_provider.dart';

class TaskWidget extends StatefulWidget {
  String taskTitle;
  bool? isChecked = false;


  TaskWidget({required this.taskTitle,required this.isChecked});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onTap: () {
          if (widget.isChecked!) {
            Provider.of<TaskListProvider>(context, listen: false)
                .deleteTask(widget);
          }
        },
        child: Text(
          widget.taskTitle,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 20,
              decoration: widget.isChecked!
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: widget.isChecked,
        onCheckboxchange: (value) {
          setState(() {
            widget.isChecked = value;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  bool? isChecked = false;
  final Function(bool?) onCheckboxchange;
  TaskCheckBox({required this.onCheckboxchange, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      onChanged: onCheckboxchange,
      value: isChecked,
    );
  }
}
