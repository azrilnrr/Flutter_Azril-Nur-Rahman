import 'package:equatable/equatable.dart';
import 'package:tugas_bloc/model/contact.dart';

class ContactListState extends Equatable {
  final List<Contact> contacts;

  const ContactListState({required this.contacts});

  static ContactListState initialState() =>
      const ContactListState(contacts: []);

  @override
  List<Object?> get props => [contacts];
}
