import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  // fungsi membuat database
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""
    CREATE TABLE kontak(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      nama TEXT,
      nomor TEXT
    )
""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('kontak.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  // tambah database
  static Future<int> tambahKontak(String nama, String nomor) async {
    final db = await SQLHelper.db();
    final data = {'nama': nama, 'nomor': nomor};
    return await db.insert('kontak', data);
  }

  // ambil data
  static Future<List<Map<String, dynamic>>> getKontak() async {
    final db = await SQLHelper.db();
    return db.query('kontak');
  }

  // update data
  static Future<int> updateKontak(int id, String nama, String nomor) async {
    final db = await SQLHelper.db();
    final data = {'nama': nama, 'nomor': nomor};
    return await db.update('kontak', data, where: "id = $id");
  }

  // delete data
  static Future<int?> hapusKontak(int id) async {
    final db = await SQLHelper.db();
    db.delete('kontak', where: 'id = ?', whereArgs: [id]);
  }
}
