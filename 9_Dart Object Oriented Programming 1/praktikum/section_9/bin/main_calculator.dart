import 'class_calculator.dart';

void main(List<String> args) {
  // membuat objek dari class calculator
  var calculate = Calculator();

  // penjumlahan
  print('Hasil Penjumlahan: ${calculate.tambah(29, 31)}');

  // pengurangan
  print('Hasil Pengurangan: ${calculate.kurang(74, 47)}');

  // perkalian
  print('Hasil Perkalian: ${calculate.kali(8, 8)}');

  // pembagian
  print('Hasil Pembagian: ${calculate.bagi(49, 7)}');
}
