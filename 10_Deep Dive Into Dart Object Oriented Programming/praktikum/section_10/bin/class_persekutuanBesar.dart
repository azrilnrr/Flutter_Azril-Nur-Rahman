import 'class_matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  int x,y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil(int a, int b) {
    return fpb(a, b);
  }

  int fpb(int a, int b) {
    if (b == 0) {
      return a;
    } else {
      return fpb(b, a % b);
    }
  }
}
