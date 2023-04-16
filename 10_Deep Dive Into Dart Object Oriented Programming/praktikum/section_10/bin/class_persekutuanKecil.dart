import 'class_matematika.dart';
import 'class_persekutuanBesar.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  int x, y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil(int a, int b) {
    return (a * b) ~/ fpb(a, b);
  }

  int fpb(int a, int b) {
    if (b == 0) {
      return a;
    } else {
      return fpb(b, a % b);
    }
  }
}
