import 'dart:io';

void main() {
  // Input nilai
  stdout.write('Masukkan Nilai Anda : ');
  int nilai = int.parse(stdin.readLineSync()!);

  // Penentuan kategori nilai
  String kategori;
  if (nilai > 70) {
    kategori = 'Nilai A';
  } else if (nilai > 40) {
    kategori = 'Nilai B';
  } else if (nilai > 0) {
    kategori = 'Nilai C';
  } else {
    kategori = '';
  }

  // Output kategori nilai
  print('Nilai Anda : $nilai');
  print('Maka Kategori Nilai Anda : $kategori');
}
