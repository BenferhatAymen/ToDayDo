import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/tasks_provider.dart';
import 'package:todoapp/screens/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
   
    ChangeNotifierProvider(
      create: (context) => TaskListProvider(),
    )
  ], child: DailyTodoApp()));
}

class DailyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Todo App",
      home: HomePage(),
    );
  }
}
