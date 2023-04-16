import 'package:flutter/material.dart';

class InputDecorationStyle {
  static inputDecorationStyle({
    required String labelText,
    required String hintText,
    required Widget prefixIcon,
  }) =>
      InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
      );
}
