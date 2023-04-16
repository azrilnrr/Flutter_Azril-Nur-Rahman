import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_bloc/bloc/counter_bloc.dart';
import 'package:tugas_bloc/bloc/counter_event.dart';
import 'package:tugas_bloc/bloc/counter_state.dart';
import 'package:tugas_bloc/model/contact.dart';
import 'package:tugas_bloc/page/create_contact.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body:
          BlocBuilder<CounterBloc, ContactListState>(builder: (context, state) {
        return ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (context, index) {
            final Contact contact = state.contacts[index];
            return ListTile(
              leading: CircleAvatar(
                child: Text(contact.name[0]),
              ),
              title: Text(contact.name),
              subtitle: Text(contact.phoneNumber),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddContactForm()),
        ),
        tooltip: 'Add Contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
