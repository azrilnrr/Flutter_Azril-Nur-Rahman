import 'dart:io';

void main() {
  int rows = 10;

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows - i; j++) {
      // Menampilkan spasi
      stdout.write(' ');
    }
    for (int k = 1; k <= i; k++) {
      // Menampilkan bintang
      stdout.write('* ');
    }
    stdout.write('\n');
  }
}
