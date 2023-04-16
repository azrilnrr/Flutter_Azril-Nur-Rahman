import 'class_persekutuanBesar.dart';
import 'class_persekutuanKecil.dart';

void main(List<String> args) {
  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(12, 30);
  int hasilKpk = kpk.hasil(kpk.x, kpk.y);
  print('KPK dari ${kpk.x} dan ${kpk.y} adalah $hasilKpk');

  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(12, 30);
  int hasilFpb = fpb.hasil(fpb.x, fpb.y);
  print('FPB dari ${fpb.x} dan ${fpb.y} adalah $hasilFpb');
}
