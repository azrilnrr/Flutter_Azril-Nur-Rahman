import 'dart:io';
import 'dart:math';

double luasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

void main(List<String> args) {
  stdout.write('Masukkan nilai Jari-Jari : ');
  double jariJari = double.parse(stdin.readLineSync()!);

  double lLingkaran = luasLingkaran(jariJari);
  print('Hasil Luas Lingkaran: $lLingkaran');
}
