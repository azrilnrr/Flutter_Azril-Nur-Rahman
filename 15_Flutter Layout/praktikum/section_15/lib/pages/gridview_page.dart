import 'package:flutter/material.dart';
import 'package:section_15/model/icon.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(icons.length, (index) {
            return Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icons[index],
                color: Colors.white,
              ),
            );
          }),
        ),
      ),
    );
  }
}
