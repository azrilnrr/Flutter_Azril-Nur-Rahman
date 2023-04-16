import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukkan Nama Panggilan : ');
  String namaPanggilan = stdin.readLineSync()!;

  stdout.write('Masukkan Makanan Favorit : ');
  String makananFavorit = stdin.readLineSync()!;

  stdout.write('Masukkan Minuman Favorit : ');
  String minumanFavorit = stdin.readLineSync()!;

  String keseluruhan = '$namaPanggilan $makananFavorit $minumanFavorit';

  print('$keseluruhan');
}
