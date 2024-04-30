import 'package:flutter/material.dart';
import 'package:shoes_shop/main_navigator.dart';
import 'package:shoes_shop/screen/crud.dart';
import 'package:shoes_shop/screen/news_screen.dart';
import 'package:shoes_shop/screen/dto/datas.dart';
import 'package:shoes_shop/screen/services/data_service.dart';
import 'package:shoes_shop/screen/endpoints/endpoints.dart';
import 'package:shoes_shop/screen/mahasiswa/data_screen.dart';

class DrawerScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment(0.0, 0.1),
          colors: [Colors.white.withOpacity(0.8), Colors.white], //
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Image(
              image: AssetImage('assets/Adidas_Samba.png'),
            ),
          ),
          ListTile(
            title: const Text('HOME'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainNavigator(),
                  ));
            },
          ),
          ListTile(
            title: const Text('API'),
            onTap: () {
               Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsScreen()
                  ));
            },
          ),
          ListTile(
            title: const Text('CRUD'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Crud(),
                  ));
            },
          ),
          ListTile(
            title: const Text('DATA'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatasScreen(),
                  ));
            },
          ),
          
        ],
      ),
    );
  }
  
  home() {}
}
