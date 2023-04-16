import 'package:flutter/material.dart';
import 'package:section_15/model/json_model.dart';

class JsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json ListView in Flutter'),
        centerTitle: true,
      ),
      body: ListView(
        children: myList.map((data) {
          return ListTile(
            title: Text(data["username"]),
            subtitle: Text(data["phone"]),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                data["username"][0],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
