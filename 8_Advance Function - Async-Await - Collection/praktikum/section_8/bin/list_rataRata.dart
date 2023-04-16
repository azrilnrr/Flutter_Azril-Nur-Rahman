void main(List<String> args) {
  List<double> listData = [4, 8, 6, 2, 10];

  double total = 0;
  for (var item in listData) {
    total += item;
  }

  double rataRata = total / listData.length;

  print(rataRata);
}
