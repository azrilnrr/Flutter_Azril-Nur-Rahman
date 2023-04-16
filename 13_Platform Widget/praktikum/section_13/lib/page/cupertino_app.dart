import 'package:flutter/cupertino.dart';
import 'package:section_13/page/cupertino_page.dart';

class CupertinoTest extends StatelessWidget {
  final _themeDark = const CupertinoThemeData.raw(
      Brightness.dark, null, null, null, null, null);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: _themeDark,
      home: HomePage(),
    );
  }
}
