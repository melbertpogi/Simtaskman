import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_task_manager/providers/task_provider.dart';
import 'package:sim_task_manager/widgets/task_item.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Sim Task Manager', style: TextStyle(fontFamily: '__Luckiest_Guy_6d9c92')),
        backgroundColor: Color(0xFFF6B400),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              return TaskItem(task: taskProvider.tasks[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-task');
        },
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
