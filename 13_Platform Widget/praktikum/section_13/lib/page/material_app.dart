import 'package:flutter/material.dart';
import 'package:section_13/page/material_page.dart';
import 'package:section_13/page/myFlutterApp_page.dart';

class MaterialTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: MyFlutterApp(),
    );
  }
}
