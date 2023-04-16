int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  var numbers = [10, 40, 50];

  for (var n in numbers) {
    var result = factorial(n);
    print('Faktorial dari $n adalah $result');
  }
}
