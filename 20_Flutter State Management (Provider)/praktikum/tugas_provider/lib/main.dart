import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_provider/home_page.dart';
import 'package:tugas_provider/image_provider.dart' as img;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => img.ImageProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Provider',
      home: HomePage(),
    );
  }
}
