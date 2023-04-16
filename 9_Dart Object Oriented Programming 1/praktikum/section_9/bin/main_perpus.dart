import 'class_perpus.dart';

void main(List<String> args) {
  var tokoBuku = TokoBuku();

  // menambahkan data buku
  tokoBuku
      .tambahBuku(Buku(1, 'Laskar Pelangi', 'Bentang Pustaka', 34000, 'Novel'));
  tokoBuku.tambahBuku(Buku(2, 'Supernova', 'Bentang Pustaka', 79000, 'Novel'));
  tokoBuku
      .tambahBuku(Buku(3, 'Sitti Nurbaya', 'Balai Pustaka', 56000, 'Novel'));

  // mendapatkan semua data buku
  var semuaBuku = tokoBuku.getSemuaBuku();

  // Menghapus suatu buku yang memiliki id angka 3
  tokoBuku.hapusBuku(3);

  // Update daftar buku setelah menghapus salah satu buku
  semuaBuku = tokoBuku.getSemuaBuku();
}
