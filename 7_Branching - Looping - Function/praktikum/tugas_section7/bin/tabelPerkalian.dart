import 'dart:io';

void main() {
  stdout.write('Masukkan jumlah baris/kolom: ');
  int size = int.parse(stdin.readLineSync()!);

  // mencetak header tabel
  for (int j = 1; j <= size; j++) {
    stdout.write('\t$j');
  }
  print('');

  // mencetak isi tabel
  for (int i = 1; i <= size; i++) {
    stdout.write('$i\t');
    for (int j = 1; j <= size; j++) {
      stdout.write('${i * j}\t');
    }
    print('');
  }
}
