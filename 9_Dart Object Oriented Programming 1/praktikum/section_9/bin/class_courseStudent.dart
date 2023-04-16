class Course {
  String _judul;
  String _deskripsi;

  Course(this._judul, this._deskripsi);
}

class Student {
  String _nama;
  String _kelas;
  List<Course> _course = [];

  Student(this._nama, this._kelas);

  void tambahCourse(Course course) {
    _course.add(course);
  }

  void hapusCourse(int index) {
    _course.removeAt(index);
  }

  void lihatCourse() {
    if (_course.isEmpty) {
      print('Belum ada course yang ditambahkan');
    } else {
      print('Course yang sudah ditambahkan:');
      for (int i = 0; i < _course.length; i++) {
        print('${i + 1}. ${_course[i]._judul} - ${_course[i]._deskripsi}');
      }
    }
  }
}
