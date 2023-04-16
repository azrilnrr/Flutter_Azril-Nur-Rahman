import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah bilangan: ');
  int num = int.parse(stdin.readLineSync()!);
  bool isPrime = true;

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print('$num adalah bilangan prima');
  } else {
    print('$num bukan bilangan prima');
  }
}
