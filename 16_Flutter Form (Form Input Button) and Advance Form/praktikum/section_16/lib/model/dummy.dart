import 'package:flutter/material.dart';

String judulText = 'Create New Contacts';
String deskripsiText =
    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.';



class InputDecorationStyle {
  static tabelInput({
    required String labelText,
    required String hintText,
  }) =>
      InputDecoration(
        focusColor: Colors.amber,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        labelText: labelText,
        hintText: hintText,
      );
}
