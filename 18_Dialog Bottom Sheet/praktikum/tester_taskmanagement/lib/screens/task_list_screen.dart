import 'package:flutter/material.dart';
import 'package:tester_taskmanagement/components/task_item_card.dart';
import 'package:tester_taskmanagement/models/task_manager.dart';

class TaskListScreen extends StatelessWidget {
  final TaskManager manager;
  const TaskListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskItem = manager.taskModel;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: taskItem.length,
        itemBuilder: (context, index) {
          final item = taskItem[index];
          return TaskItemCard(
            task: item,
            key: Key(item.id),
            onPressed: () {
              manager.deleteTask(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.taskName} Deleted')),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}
