import 'package:uuid/uuid.dart';

class Task {
  final String id;
  final String title;
  final String description;
  bool isDone;

  Task({
    required this.title,
    required this.description,
    this.isDone = false,
  }) : id = Uuid().v4();
}
