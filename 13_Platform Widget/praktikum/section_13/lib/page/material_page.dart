import 'package:flutter/material.dart';
import 'package:section_13/config/theme.dart';
import 'package:section_13/model/kontak.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: const Text('Home'),
            ),
            ListTile(
              title: const Text('Setting'),
            ),
          ],
        ),
      ),
      body:
          // const Center(
          //   child: const Text('This is MaterialApp'),
          // ),
          ListView.builder(
        itemCount: kontaks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(kontaks[index].nama),
            subtitle: Text(kontaks[index].nomorHp),
            leading: CircleAvatar(
              child: Text(
                kontaks[index].nama[0],
                style: TextStyle(color: baseColor),
              ),
              backgroundColor: green,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
