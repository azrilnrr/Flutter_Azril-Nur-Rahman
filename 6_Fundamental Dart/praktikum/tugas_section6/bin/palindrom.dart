import 'dart:io';

void main() {
  // input sebuah kata
  stdout.write('Masukkan sebuah kata: ');
  String kata = stdin.readLineSync()!;

  // membuang spasi dan mengubah ke huruf kecil
  kata = kata.replaceAll(' ', '').toLowerCase();

  // membalik kata
  String kataBalik = kata.split('').reversed.join();

  // mengecek apakah kata palindrom atau tidak
  if (kata == kataBalik) {
    print('palindrom');
  } else {
    print('bukan palindrom');
  }
}
