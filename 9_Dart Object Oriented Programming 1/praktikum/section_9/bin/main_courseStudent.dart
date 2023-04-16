import 'class_courseStudent.dart';

void main(List<String> args) {
  // membuat course dari class course
  var cs1 = Course('TIK', 'Apa Itu Internet');
  var cs2 = Course('Matematika', 'Aljabar');
  var cs3 = Course('PJOK', 'Bola Besar');

  // membuat student dari class student
  var st1 = Student('Titus', 'X');

  // menambahkan course
  st1.tambahCourse(cs1);
  st1.tambahCourse(cs2);
  st1.tambahCourse(cs3);

  // melihat course
  st1.lihatCourse();

  // menghapus course
  st1.hapusCourse(2);

  print('================');

  // update course setelah dihapus
  st1.lihatCourse();
}
