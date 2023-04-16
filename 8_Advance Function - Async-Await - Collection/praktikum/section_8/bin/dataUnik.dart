void main(List<String> args) {
  //membuat list
  List<int> listData = [1, 2, 3, 4, 5, 4, 5, 2, 2, 7, 8, 1, 2, 2];
  //menghilangkan data yang sama
  Set<int> dataUnik = Set<int>.from(listData);
  //mengembalikan data kedalam list
  List<int> hasil = dataUnik.toList();

  //menampilkan data awal
  print(listData);
  //menampilakan data yang sudah berubah
  print(hasil);
}
