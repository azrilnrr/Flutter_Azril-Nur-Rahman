//rumus keliling lingkaran
import 'dart:io';
import 'dart:math';

double kelilingLingkaran(double jariJari) {
  return 2 * pi * jariJari;
}

//rumus luas lingkara
double luasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

void main(List<String> args) {
  stdout.write('Masukkan nilai Jari-Jari : ');
  double jariJari = double.parse(stdin.readLineSync()!);

  //masukkan inputan tersebut ke rumus keliling dan luas lingkaran
  double kLingkaran = kelilingLingkaran(jariJari);
  double lLingkaran = luasLingkaran(jariJari);

  print('Hasil Keliling Lingkaran: $kLingkaran');
  print('Hasil Luas Lingkaran: $lLingkaran');
}
