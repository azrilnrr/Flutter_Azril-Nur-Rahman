import 'class_balok.dart';
import 'class_kubus.dart';

void main(List<String> args) {
  // Kubus
  var kubus = Kubus(5);
  print('Volume Kubus adalah: ${kubus.volume()}');

  // Balok
  var balok = Balok(20, 10, 10);
  print('Volume Balok adalah: ${balok.volume()}');
}
