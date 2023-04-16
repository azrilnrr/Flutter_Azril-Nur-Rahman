import 'package:flutter/material.dart';
import 'package:section_24/model/person.dart';
import 'package:section_24/services/services.dart';
import 'package:section_24/widget/card_person_custom.dart';
import 'package:section_24/widget/drawer_custom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Orang? orang;

  TextEditingController namaController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TUGAS REST API'),
        centerTitle: true,
      ),
      drawer: DrawerCustom(),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: namaController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Nama',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Angka',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    Orang? hasil = await Services.createUser(
                        namaController.text, phoneController.text);
                    if (hasil != null) {
                      setState(() {
                        orang = hasil;
                      });
                    }
                  },
                  child: const Text('POST'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () async {
                    Orang? hasil = await Services.getById(2);
                    if (hasil != null) {
                      setState(() {
                        orang = hasil;
                      });
                    }
                  },
                  child: const Text('GET'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          orang != null
              ? CardCustomPerson(person: orang!)
              : const Text('NO DATA')
        ],
      ),
    );
  }
}
