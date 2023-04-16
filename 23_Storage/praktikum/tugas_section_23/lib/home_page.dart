import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_section_23/database.dart';
import 'package:tugas_section_23/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nomorController = TextEditingController();

  late SharedPreferences loginData;
  String? namaUser;

  @override
  void initState() {
    initial();
    dataKontak();
    super.initState();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      namaUser = loginData.getString('nama').toString();
    });
  }

  // ambil data dari database
  List<Map<String, dynamic>> kontak = [];
  void dataKontak() async {
    final data = await SQLHelper.getKontak();
    setState(() {
      kontak = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STORAGE'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: Text(namaUser![0]),
                        ),
                        SizedBox(height: 20),
                        Text('$namaUser'),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            loginData.setBool('login', true);
                            loginData.remove('nama');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: const Text('LOGOUT'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: kontak.length,
        itemBuilder: (context, index) => Card(
          color: Colors.blue[100],
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(kontak[index]['nama'][0]),
            ),
            title: Text(kontak[index]['nama']),
            subtitle: Text(kontak[index]['nomor']),
            trailing: SizedBox(
              width: 98,
              child: Row(children: [
                IconButton(
                  onPressed: () => formAddUpdateKontak(kontak[index]['id']),
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () => hapusKontak(kontak[index]['id']),
                  icon: Icon(Icons.delete),
                ),
              ]),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          formAddUpdateKontak(null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> tambahKontak() async {
    await SQLHelper.tambahKontak(namaController.text, nomorController.text);
    dataKontak();
  }

  Future<void> updateKontak(int id) async {
    await SQLHelper.updateKontak(id, namaController.text, nomorController.text);
    dataKontak();
  }

  Future<void> hapusKontak(int id) async {
    await SQLHelper.hapusKontak(id);
    dataKontak();
  }

  void formAddUpdateKontak(int? id) async {
    if (id != null) {
      final _dataKontak = kontak.firstWhere((element) => element['id'] == id);
      namaController.text = _dataKontak['nama'];
      nomorController.text = _dataKontak['nomor'];
    }
    showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.all(5),
        width: double.infinity,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(hintText: 'Masukkan Nama'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: nomorController,
                decoration: InputDecoration(hintText: 'Masukkan Nomor'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (id == null) {
                    await tambahKontak();
                  } else {
                    await updateKontak(id);
                  }
                  namaController.text = '';
                  nomorController.text = '';
                  Navigator.pop(context);
                },
                child: Text(id == null ? 'TAMBAH' : 'UPDATE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
