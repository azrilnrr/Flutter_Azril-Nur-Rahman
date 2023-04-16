class Hewan {
  double _berat;

  Hewan(this._berat);

  double getBerat() {
    return _berat;
  }

  void setBerat(double berat) {
    _berat = berat;
  }
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (_hitungBeratMuatan() + hewan._berat <= kapasitas) {
      muatan.add(hewan);
      print("Berhasil menambahkan hewan dengan berat ${hewan._berat}");
    } else {
      print("Kapasitas muatan penuh");
    }
  }

  double _hitungBeratMuatan() {
    double totalBerat = 0;
    for (var hewan in muatan) {
      totalBerat += hewan._berat;
    }
    return totalBerat;
  }
}
