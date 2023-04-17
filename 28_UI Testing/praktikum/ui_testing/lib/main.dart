import 'package:flutter/material.dart';
import 'package:ui_testing/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ui testing',
      home: LoginPage(),
    );
  }
}