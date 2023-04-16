import 'package:flutter/material.dart';
import 'package:tugas_section_23/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STORAGE',
      home: LoginPage(),
    );
  }
}
