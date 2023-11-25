import 'package:first_temp/features/firebase_home_data/data/models/task_model.dart';
import 'package:flutter/material.dart';

class FirebaseHomeBody extends StatefulWidget {
  const FirebaseHomeBody({
    super.key,
  });

  @override
  State<FirebaseHomeBody> createState() => _FirebaseHomeBodyState();
}

class _FirebaseHomeBodyState extends State<FirebaseHomeBody> {
  List<Task> taskList = [
    Task(title: "task1"),
    Task(title: "task2"),
    Task(title: "task3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Chip(
            label: Text("Tasks"),
          ),
        ),
        ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            var task = taskList[index];
            return ListTile(
              title: Text(task.title),
            );
          },
        )
      ],
    );
  }
}
