import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tugas_animation/create_contact_page.dart';
import 'package:tugas_animation/model.dart';
import 'package:tugas_animation/update_contact_page.dart';

class ListContact extends StatelessWidget {
  const ListContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: kontaks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                kontaks[index].nama[0],
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.amber,
            ),
            title: Text(kontaks[index].nama),
            subtitle: Text(kontaks[index].nomorHp),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: UpdateContactPage(),
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 800),
                        reverseDuration: Duration(milliseconds: 800),
                      ),
                    );
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: CreateContactPage(),
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 800),
              reverseDuration: Duration(milliseconds: 800),
            ),
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
