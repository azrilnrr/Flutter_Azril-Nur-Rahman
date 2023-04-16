import 'class_hewanMobil.dart';

void main(List<String> args) {
  // membuat objek hewan dari class hewan
  var h1 = Hewan(200.0);
  var h2 = Hewan(300.0);
  var h3 = Hewan(504.0);

  // check berat hewan
  print('Berat hewan pertama: ${h1.getBerat()}');
  print('Berat hewan kedua: ${h2.getBerat()}');
  print('Berat hewan ketiga: ${h3.getBerat()}');

  print('==============');

  // membuat objek mobil dari class mobil dengan kapasitas 2
  var m1 = Mobil(1000.0);
  print('Total Kapasitas Muatan: ${m1.kapasitas}');

  // menambahkan data hewan ke mobil
  m1.tambahMuatan(h1);
  m1.tambahMuatan(h2);
  m1.tambahMuatan(h3);
  
}
