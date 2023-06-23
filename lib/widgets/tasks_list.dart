import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task.dart';

import '../providers/tasks_provider.dart';

class TasksList extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      List<TaskWidget>? items =Provider.of<TaskListProvider>(context).tasks;

      return ListView.builder(itemBuilder: ((context, index) {
        return items[index] ;
      })
      , itemCount: items.length,);

    }
  }
