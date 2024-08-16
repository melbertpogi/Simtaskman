import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_task_manager/providers/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  static const routeName = '/add-task';

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Add New Task', style: TextStyle(fontFamily: '__Luckiest_Guy_6d9c92')),
        backgroundColor: Color(0xFFF6B400),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Task Title'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Task Description'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty && descriptionController.text.isNotEmpty) {
                  Provider.of<TaskProvider>(context, listen: false).addTask(
                    titleController.text,
                    descriptionController.text,
                  );
                  Navigator.of(context).pop();
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF6B400)),
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
