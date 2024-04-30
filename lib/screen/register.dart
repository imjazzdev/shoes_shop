import 'package:flutter/material.dart';
import 'package:shoes_shop/utils/var_global.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var nama = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                const Text(
                  'Nama',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: nama,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan nama',
                    border: OutlineInputBorder(),
                  ),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Nama tidak boleh kosong';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _name = value!;
                  // },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan email',
                    border: OutlineInputBorder(),
                  ),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Email tidak boleh kosong';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _email = value!;
                  // },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan password',
                    border: OutlineInputBorder(),
                  ),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Password tidak boleh kosong';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _password = value!;
                  // },
                ),
                const SizedBox(height: 16),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      VarGlobal.user.add({
                        'nama': nama.text.toString(),
                        'email': email.text.toString(),
                        'password': password.text.toString()
                      });
                      Navigator.pop(context);
                      print('DATA USER : ${VarGlobal.user}');
                    },
                    child: const Text('Sign In'),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sudah punya akun? Silahkan Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
