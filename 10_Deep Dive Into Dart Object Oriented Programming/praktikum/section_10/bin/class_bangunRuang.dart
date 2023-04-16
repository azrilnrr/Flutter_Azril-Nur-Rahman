class BangunRuang {
  double? panjang;
  double? lebar;
  double? tinggi;

  BangunRuang() {
    panjang = 0;
    lebar = 0;
    tinggi = 0;
  }

  double volume() {
    return panjang! * lebar! * tinggi!;
  }
}
