import 'package:flutter/material.dart';

class ImageProvider extends ChangeNotifier {
  List<String> _images = [
    'assets/images1.jpg',
    'assets/images2.jpg',
    'assets/images3.jpg',
    'assets/images4.jpg',
    'assets/images5.jpg',
    'assets/images6.jpg',
    'assets/images7.jpg',
    'assets/images8.jpg',
    'assets/images9.jpg',
    'assets/images10.jpg',
  ];

  List<String> get images => _images;
}
