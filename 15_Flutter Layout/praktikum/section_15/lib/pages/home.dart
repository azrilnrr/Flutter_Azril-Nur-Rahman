import 'package:flutter/material.dart';
import 'package:section_15/pages/gridView_page.dart';
import 'package:section_15/pages/json_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: JsonPage(),
      home: GridViewPage(),
    );
  }
}
