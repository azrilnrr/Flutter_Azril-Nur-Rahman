import 'package:flutter/material.dart';
import 'package:tugas_animation/theme.dart';

class CreateContactPage extends StatefulWidget {
  CreateContactPage({Key? key}) : super(key: key);

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  final _nama = TextEditingController();
  final _nomorHP = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nama,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                      labelText: 'Nama',
                      hintText: 'Masukkan Nama ',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _nomorHP,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                      labelText: 'Nomor HP',
                      hintText: 'Masukkan Nomor',
                      prefixIcon: Icon(Icons.phone_android),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('SUBMIT'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
