import 'package:flutter/material.dart';
import 'package:sim_task_manager/models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        title: Text(
          task.title,
          style: TextStyle(
            fontFamily: '__displayFont_d56851',
            color: Color(0xFF3B82F6),
          ),
        ),
        subtitle: Text(task.description),
        trailing: IconButton(
          icon: Icon(Icons.check),
          onPressed: () {
            // Mark task as done
          },
        ),
      ),
    );
  }
}
