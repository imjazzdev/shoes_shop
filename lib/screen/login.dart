import 'package:flutter/material.dart';
import 'package:shoes_shop/main_navigator.dart';
import 'package:shoes_shop/screen/register.dart';
import 'package:shoes_shop/utils/var_global.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: Form(
              // key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      setState(() {
                        // _email = value;
                      });
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    controller: password,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      setState(() {
                        // _password = value;
                      });
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ));
                          },
                          child: Text('Register'))),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      var result = VarGlobal.user
                          .firstWhere((data) => data['email'] == email.text);
                      // print('RESULT : ${result}');
                      if (result['email'] == email.text.toString() &&
                          result['password'] == password.text.toString()) {
                        print('DATA BENAR, USER LOGIN ');
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainNavigator(),
                            ),
                            (route) => false);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Tidak ada data')));
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
