import 'class_shape.dart';

class Rectangle implements Shape {
  int panjang;
  int lebar;

  Rectangle(this.panjang, this.lebar);

  @override
  int getArea() {
    return panjang * lebar;
  }

  @override
  int getPerimeter() {
    return 2 * (panjang + lebar);
  }
}
