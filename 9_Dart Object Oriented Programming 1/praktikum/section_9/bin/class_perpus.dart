class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> _buku = [];

  void tambahBuku(Buku buku) {
    _buku.add(buku);
  }

  List<Buku> getSemuaBuku() {
    print('\nUpdate Daftar Buku:');
    for (var buku in _buku) {
      print(
          '${buku.id}. ${buku.judul} - ${buku.penerbit} - ${buku.harga} - ${buku.kategori}');
    }
    return _buku;
  }

  void hapusBuku(int id) {
    _buku.removeWhere((buku) => buku.id == id);
  }
}
