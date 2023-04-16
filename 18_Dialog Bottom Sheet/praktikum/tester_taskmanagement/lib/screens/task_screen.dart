import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_taskmanagement/components/profil_sheet.dart';
import 'package:tester_taskmanagement/models/task_manager.dart';
import 'package:tester_taskmanagement/screens/empty_task_screen.dart';
import 'package:tester_taskmanagement/screens/task_item_screen.dart';
import 'package:tester_taskmanagement/screens/task_list_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Management'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => const ProfileSheet(),
              );
            },
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      body: buildTaskScreen(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<TaskManager>(
            context,
            listen: false,
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(builder: (context, manager, child) {
      if (manager.taskModel.isNotEmpty) {
        return TaskListScreen(
          manager: manager,
        );
      } else {
        return const EmptyTaskScreen();
      }
    });
  }
}
