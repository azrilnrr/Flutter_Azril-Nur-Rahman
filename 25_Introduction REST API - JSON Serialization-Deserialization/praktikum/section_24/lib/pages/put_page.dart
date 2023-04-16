import 'package:flutter/material.dart';
import 'package:section_24/model/person.dart';
import 'package:section_24/services/services.dart';
import 'package:section_24/widget/card_title_custom.dart';
import 'package:section_24/widget/drawer_custom.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  TitleBodyTest? _titleBodyTest;

  TextEditingController userIdController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TUGAS REST API'),
        centerTitle: true,
      ),
      drawer: DrawerCustom(),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: userIdController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan User ID',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Title',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: bodyController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Body',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    TitleBodyTest? hasil = await Services.putUser(
                        userIdController.text,
                        titleController.text,
                        bodyController.text);
                    if (hasil != null) {
                      setState(() {
                        _titleBodyTest = hasil;
                      });
                    }
                  },
                  child: const Text('PUT'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          _titleBodyTest != null
              ? CardCustomTitleBodyTest(titleBodyTest: _titleBodyTest!)
              : const Text('NO DATA')
        ],
      ),
    );
  }
}
