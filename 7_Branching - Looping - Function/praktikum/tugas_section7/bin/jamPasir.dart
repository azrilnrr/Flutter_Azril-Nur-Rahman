import 'dart:io';

void main() {
  int n = 7; // ukuran jam pasir
  int middle = (n / 2).floor();

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i <= middle) {
        if (j >= i && j < n - i) {
          stdout.write('*');
        } else {
          stdout.write(' ');
        }
      } else {
        if (j >= n - i - 1 && j <= i) {
          stdout.write('*');
        } else {
          stdout.write(' ');
        }
      }
    }
    print('');
  }
}
