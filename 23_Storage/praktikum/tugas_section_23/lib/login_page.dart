import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_section_23/home_page.dart';
import 'package:tugas_section_23/theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nama = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nama.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
          Form(
            key: _formKey,
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
                    validator: (value) {
                      if (value != null && value.length < 4) {
                        return 'Enter at least 4 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                      labelText: 'Email',
                      hintText: 'Masukkan Email',
                      prefixIcon: Icon(Icons.mail),
                    ),
                    validator: (email) {
                      if (email != null && !EmailValidator.validate(email)) {
                        return 'Enter a valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _password,
                    decoration: InputDecorationStyle.inputDecorationStyle(
                      labelText: 'Password',
                      hintText: 'Masukkan Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value != null && value.length < 5) {
                        return 'Enter min. 5 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        final isValidForm = _formKey.currentState!.validate();
                        String nama = _nama.text;
                        if (isValidForm) {
                          loginData.setBool('login', false);
                          loginData.setString('nama', nama);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (route) => (false));
                        }
                      },
                      child: Text('Login'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
