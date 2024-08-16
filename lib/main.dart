import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_task_manager/providers/task_provider.dart';
import 'package:sim_task_manager/screens/task_list.dart';
import 'package:sim_task_manager/screens/add_task_screen.dart';

void main() {
  runApp(SimTaskManagerApp());
}

class SimTaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Sim Task Manager',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: '__displayFont_d56851',
          backgroundColor: Color(0xFFF6B400),
        ),
        home: TaskListScreen(),
        routes: {
          AddTaskScreen.routeName: (context) => AddTaskScreen(),
        },
      ),
    );
  }
}
