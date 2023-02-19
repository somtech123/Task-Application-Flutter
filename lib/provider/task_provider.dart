import 'package:flutter/cupertino.dart';
import 'package:task_app/model/db_helper.dart';
import 'package:task_app/model/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _task = [
    Task(
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
      time: DateTime.now(),
      type: "Local Task",
    ),
    Task(
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
      time: DateTime.now(),
      type: "Urgent",
    ),
    Task(
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
      time: DateTime.now(),
      type: "Bookmark",
    ),
    Task(
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
      time: DateTime.now(),
      type: "Bookmark",
    ),
    Task(
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
      time: DateTime.now(),
      type: "Local Task",
    ),
  ];

  List<Task> get getTask {
    return [..._task];
  }

  final Map<String, Task> _map = {};
  Map<String, Task> get getdata {
    return {..._map};
  }

  void removeNote(String id) {
    _map.remove(id);
    notifyListeners();
  }

  void addNewTask(
    String id,
    String message,
    String type,
    DateTime time,
  ) {
    Task task = Task(
      message: message,
      time: time,
      type: type,
    );
    if (id.isNotEmpty || message.isNotEmpty || type.isNotEmpty) {
      _map.putIfAbsent(id, () => task);
      notifyListeners();
      DbHelper.addValues(
        'tasks',
        task.tojson(),
      );
    }
  }
}
