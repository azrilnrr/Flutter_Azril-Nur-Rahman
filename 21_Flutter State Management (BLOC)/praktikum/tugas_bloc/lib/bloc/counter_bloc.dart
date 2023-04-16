import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:tugas_bloc/bloc/counter_event.dart';
import 'package:tugas_bloc/bloc/counter_state.dart';
import 'package:tugas_bloc/model/contact.dart';

class CounterBloc extends Bloc<CounterEvent, ContactListState> {
  CounterBloc() : super(ContactListState.initialState()) {
    on<AddContactEvent>((event, emit) {
      List<Contact> updatedContacts = List.of(state.contacts);
      updatedContacts
          .add(Contact(name: event.name, phoneNumber: event.phoneNumber));
      emit(ContactListState(contacts: updatedContacts));
    });
  }

  @override
  Stream<ContactListState> mapEventToState(
    CounterEvent event,
  ) async* {
    // Do nothing here
  }
}
