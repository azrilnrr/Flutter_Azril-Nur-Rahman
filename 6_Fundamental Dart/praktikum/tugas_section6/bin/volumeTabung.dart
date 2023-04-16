import 'dart:io';
import 'dart:math';

double volumeTabung(double jariJari, double tinggi) {
  return pi * jariJari * jariJari * tinggi;
}

void main(List<String> args) {
  //masukkan nilai jari-jari tabung
  stdout.write('Masukkan nilai Jari-Jari Tabung : ');
  double jariJari = double.parse(stdin.readLineSync()!);

  //masukkan nilai tinggi tabung
  stdout.write('Masukkan nilai Tinggi Tabung : ');
  double tinggi = double.parse(stdin.readLineSync()!);

  //gabungkan inputan dan rumusnya
  double volume = volumeTabung(jariJari, tinggi);

  //lalu tampilkan hasil
  print('Hasil dari Volume Tabung adalah : $volume');
}
