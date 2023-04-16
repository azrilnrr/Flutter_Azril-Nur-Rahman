import 'class_circle.dart';
import 'class_rectangle.dart';
import 'class_square.dart';

void main(List<String> args) {
  // LINGKARAN
  var lingkaran = Circle(10);
  // Keliling Lingkaran
  print('Keliling Lingkaran: ${lingkaran.getPerimeter()}');
  // Luas Lingkaran
  print('Luas Lingkaran: ${lingkaran.getArea()}');

  // PERSEGI
  var persegi = Square(100);
  // Keliling Persegi
  print('Keliling Persegi: ${persegi.getPerimeter()}');
  // Luas Persegi
  print('Luas Persegi: ${persegi.getArea()}');

  // PERSEGI PANJANG
  var persegiPanjang = Rectangle(25, 4);
  // Keliling Persegi Panjang
  print('Keliling Persegi Panjang: ${persegiPanjang.getPerimeter()}');
  // Luas Persegi Panjang
  print('Luas Persegi Panjang: ${persegiPanjang.getArea()}');
}
