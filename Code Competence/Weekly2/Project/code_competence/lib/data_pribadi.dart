import 'package:code_competence/models/theme.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nama = TextEditingController();
  final _email = TextEditingController();
  final _asalKota = TextEditingController();
  final _nomorHP = TextEditingController();
  final _alamat = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  int indexBnb = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DATA PRIBADI'),
        centerTitle: true,
      ),
      backgroundColor: ColorApp.greyColor,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('CONTACT US'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('ABOUT US'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'WELCOME',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/register.png',
                  // height: 300,
                ),
              ],
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nama,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                      labelText: 'Nama',
                      hintText: 'Masukkan Nama ',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                        labelText: 'Email',
                        hintText: 'Masukkan Email',
                        prefixIcon: Icon(Icons.mail)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _asalKota,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                        labelText: 'Asal Kota',
                        hintText: 'Masukkan Kota',
                        prefixIcon: Icon(Icons.park_outlined)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _nomorHP,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                        labelText: 'Nomor HP',
                        hintText: 'Masukkan Nomor',
                        prefixIcon: Icon(Icons.phone_android)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _alamat,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                        labelText: 'Alamat',
                        hintText: 'Masukkan Alamat',
                        prefixIcon: Icon(Icons.map_sharp)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('FORM DATA DIRI'),
                            content: formDataDiri(),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Confirm'),
                              )
                            ],
                          ),
                        );
                      },
                      child: Text('SUBMIT'))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'ABOUT US',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardCustom(),
              SizedBox(width: 20),
              cardCustom(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexBnb = index;
          });
        },
        currentIndex: indexBnb,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Container cardCustom() {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amber[200]),
      child: Column(
        children: [
          Image.asset(
            'assets/register.png',
            width: 300,
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dui pharetra, tristique orci in, venenatis metus. Fusce molestie id.',
            maxLines: 4,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container formDataDiri() {
    return Container(
      height: 250,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: ${_nama.text}'),
          SizedBox(height: 20),
          Text('Email: ${_email.text}'),
          SizedBox(height: 20),
          Text('Kota: ${_asalKota.text}'),
          SizedBox(height: 20),
          Text('Nomor HP: ${_nomorHP.text}'),
          SizedBox(height: 20),
          Text('Alamat: ${_alamat.text}'),
        ],
      ),
    );
  }
}
