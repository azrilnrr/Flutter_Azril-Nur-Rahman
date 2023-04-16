import 'class_shape.dart';

class Square implements Shape {
  int sisi;

  Square(this.sisi);

  @override
  int getArea() {
    return sisi * sisi;
  }

  @override
  int getPerimeter() {
    return 4 * sisi;
  }
}
