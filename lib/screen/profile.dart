import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        padding: EdgeInsets.only(left: 30, right: 30),
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/profile.png'),
          ),
          TextButton(onPressed: () {}, child: Text('Ubah profile')),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Nama', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Jenis kelamin', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'No Hp', border: OutlineInputBorder()),
            ),
          ),
          Container(
            height: 40,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.blue),
            child: Text(
              'Simpan profile',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
