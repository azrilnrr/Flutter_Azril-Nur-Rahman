import 'package:flutter/material.dart';
import 'package:section_13/config/theme.dart';
import 'package:section_13/model/learning.dart';

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        itemCount: learning.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(learning[index].namaKelas),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: secondaryColor,
        foregroundColor: black,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: primaryColor,
          selectedItemColor: baseColor,
          unselectedItemColor: grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), label: 'Information'),
          ]),
    );
  }
}
