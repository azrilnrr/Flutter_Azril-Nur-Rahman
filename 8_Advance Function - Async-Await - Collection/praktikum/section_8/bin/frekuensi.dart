void main(List<String> args) {
  //membuat list
  List<String> listData = [
    'mustang',
    'bmw',
    'viper',
    'dodge',
    'bmw',
    'viper',
    'mercedes'
  ];

  // penampungan frekuensi dan melalukan perulangan untuk mengakses per index
  Map<String, int> frekuensi = {};
  for (var i = 0; i < listData.length; i++) {
    if (frekuensi.containsKey(listData[i])) {
      frekuensi[listData[i]] = frekuensi[listData[i]]! + 1;
    } else {
      frekuensi[listData[i]] = 1;
    }
  }

  // menampilkan data list
  print(listData);

  // menampilkan frekuensinya
  print(frekuensi);
}
