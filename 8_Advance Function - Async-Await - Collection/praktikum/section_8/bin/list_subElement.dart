void main(List<String> args) {

  // membuat list
  List<List<String>> listData = [
    ['Jawa Timur', 'Surabaya'],
    ['Jawa Barat', 'Bandung'],
    ['Jawa Tengah', 'Semarang'],
    ['Bali', 'Denpasar'],
    ['Papua', 'Jayapura'],
  ];

  // menampilkan list dalam bentuk MAP
  Map<String, String> mapData = Map.fromIterable(listData,
      key: (item) => item[0], value: (value) => value[0]);

  print(listData);
  print(mapData);
}
