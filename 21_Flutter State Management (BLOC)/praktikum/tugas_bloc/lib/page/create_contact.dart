import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_bloc/page/home_page.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class AddContactForm extends StatefulWidget {
  @override
  _AddContactFormState createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  void _submitForm(BuildContext context) {
    final String name = _nameController.text;
    final String phoneNumber = _phoneNumberController.text;
    BlocProvider.of<CounterBloc>(context)
        .add(AddContactEvent(name: name, phoneNumber: phoneNumber));
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _submitForm(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactList(),
                  ),
                );
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
