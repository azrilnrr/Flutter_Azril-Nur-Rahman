import 'class_shape.dart';
import 'dart:math';

class Circle implements Shape {
  // r menandakan jari-jari
  int r;

  Circle(this.r);

  @override
  int getArea() {
    return pi * r * r ~/ 1;
  }

  @override
  int getPerimeter() {
    return 2 * pi * r ~/ 1;
  }
}
