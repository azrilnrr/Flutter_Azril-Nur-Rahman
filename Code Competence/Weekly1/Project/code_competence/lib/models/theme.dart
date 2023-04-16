import 'package:flutter/material.dart';

class ColorApp {
  static const cyanColor = Color(0xFF00FFFF);
  static const amberColor = Color(0xFFFFBF00);
  static const greyColor = Color(0xFFC7CAD1);
  static const redColor = Color(0xFFE15577);
  static const brownColor = Color(0xFFd53600);
}

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
          borderSide: BorderSide(color: ColorApp.greyColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorApp.amberColor),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
      );
}
