// rumus keliling persegi
import 'dart:io';

import 'dart:math';

double kelilingPersegi(double sisi) {
  return 4 * sisi;
}

// rumus luas persegi
double luasPersegi(double sisi) {
  return sisi * sisi;
}

//rumus keliling persegi panjang
double kelilingPersegiPanjang(double panjang, double lebar) {
  return 2 * (panjang + lebar);
}

//rumus luas persegi panjang
double luasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}

void main(List<String> args) {
  //input nilai sisi untuk persegi serta panjang dan lebar untuk persegi panjang
  stdout.write('Masukkan nilai sisi persegi : ');
  double sisiPersegi = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan nilai panjang persegi : ');
  double panjangPP = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan nilai lebar persegi : ');
  double lebarPP = double.parse(stdin.readLineSync()!);

  print('==========');

  //masukkan inputan tersebut ke rumus keliling dan luas persegi
  double kPersegi = kelilingPersegi(sisiPersegi);
  double lPersegi = luasPersegi(sisiPersegi);

  //masukkan inputan tersebut ke rumus keliling dan luas persegi panjang
  double kPersegiPanjang = kelilingPersegiPanjang(panjangPP, lebarPP);
  double lPersegiPanjang = luasPersegiPanjang(panjangPP, lebarPP);

  print('Hasil Keliling Persegi: $kPersegi');
  print('Hasil Luas Persegi: $lPersegi');
  print('Hasil Keliling Persegi Panjang: $kPersegiPanjang');
  print('Hasil Luas Persegi Panjang: $lPersegiPanjang');
}
