import 'dart:ffi';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:section_16/model/dummy.dart';

import 'model/list_kontak.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pilihIndex = -1;
  var _formkey = GlobalKey<FormState>();

  TextEditingController namaKontak = TextEditingController();
  TextEditingController nomorKontak = TextEditingController();

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              deskripsiForm(context),
              formList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget deskripsiForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(Icons.phone_android_outlined),
          SizedBox(
            height: 10,
          ),
          Text(
            judulText,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            deskripsiText,
            style: TextStyle(fontSize: 14),
          ),
          Divider(
            height: 20,
            color: Colors.grey,
            thickness: 3,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukkan Nama Anda';
              } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                return 'Nama hanya boleh terdiri dari huruf dan spasi !';
              } else {
                List<String> nama = value.split(' ');
                for (String awal_nama in nama) {
                  if (awal_nama.isNotEmpty && !isCapitalized(awal_nama)) {
                    return 'Setiap awalan kata harus kapital !';
                  } else if (nama.length < 2) {
                    return "Nama minimal 2 kata !";
                  }
                }
              }
            },
            controller: namaKontak,
            decoration: InputDecorationStyle.tabelInput(
              labelText: 'Nama',
              hintText: 'Insert your name',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukkan Nomor HP';
              } else if (value.length < 8) {
                return 'Nomor tidak boleh kurang dari 8';
              } else if (value.length > 13) {
                return 'Nomor tidak boleh lebih dari 13';
              }
            },
            controller: nomorKontak,
            decoration: InputDecorationStyle.tabelInput(
              labelText: 'Nomor',
              hintText: '+62 ....',
            ),
          ),
          Row(
            children: [
              const Text('Tanggal : '),
              SizedBox(
                width: 10,
              ),
              Text(
                DateFormat('dd-MM-yyy').format(_dueDate),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () async {
                  final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(currentDate.year + 5),
                  );
                  setState(() {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                  });
                },
                child: Text('Pilih'),
              ),
            ],
          ),
          Row(
            children: [
              Text('Color : '),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 10,
                color: currentColor,
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Pilih warna anda'),
                          content: BlockPicker(
                              pickerColor: currentColor,
                              onColorChanged: (color) {
                                currentColor = color;
                              }),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Simpan'),
                            ),
                          ],
                        );
                      });
                },
                child: Text('Pilih warna'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  String nama = namaKontak.text.trim();
                  String number = nomorKontak.text.trim();
                  if (nama.isNotEmpty && number != 0) {
                    setState(() {
                      namaKontak.text = '';
                      nomorKontak.text = '';
                      kontaks[pilihIndex].nama = nama;
                      kontaks[pilihIndex].nomorHp = number;
                    });
                  }
                },
                child: Text(
                  'Update',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    setState(() {
                      final konts = Kontak(
                        nama: namaKontak.text,
                        nomorHp: nomorKontak.text,
                        warna: currentColor,
                        date: _dueDate,
                      );
                      kontaks.add(konts);
                      namaKontak.clear();
                      nomorKontak.clear();
                      kontaks.forEach((element) {
                        print(
                            'List Kontak : ${konts.nama}, ${konts.nomorHp}, ${konts.date}, ${konts.warna}');
                      });
                    });
                  }
                },
                child: Text(
                  'Simpan',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget formList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: kontaks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(kontaks[index].nama),
            subtitle: Text(kontaks[index].nomorHp),
            leading: CircleAvatar(
              child: Text(
                kontaks[index].nama[0],
                style: TextStyle(color: Colors.white),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    namaKontak.text = kontaks[index].nama;
                    nomorKontak.text = kontaks[index].nomorHp;
                    setState(() {
                      pilihIndex = index;
                    });
                  },
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Hapus Kontak'),
                        content: Text(
                          'Apakah kamu yakin akan menghapus kontak ini?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Tidak'),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                kontaks.removeAt(index);
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Iya'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool isCapitalized(String word) {
    return word[0] == word[0].toUpperCase();
  }
}
