import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_taskmanagement/models/task_manager.dart';
import 'package:tester_taskmanagement/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
