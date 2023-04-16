Future<int> hitungFaktorial(int n) async {
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
    await Future.delayed(
        Duration(seconds: 1)); // menunggu 1 detik setiap kali iterasi
  }
  return faktorial;
}

void main(List<String> args) async {
  int n = 10;
  int hasil = await hitungFaktorial(n);
  print(hasil);
}
