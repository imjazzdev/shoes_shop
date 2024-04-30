import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop/utils/database_instance.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/var_global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: VarGlobal.shoes.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => DetailPage(
              //         img: VarGlobal.data[index]['img'],
              //         title: VarGlobal.data[index]['title'],
              //         deskripsi: VarGlobal.data[index]['deskripsi'],
              //         harga: VarGlobal.data[index]['harga'],
              //       ),
              //     ));
              AwesomeDialog(
                  context: context,
                  dialogType: DialogType.question,
                  animType: AnimType.rightSlide,
                  title: 'Hubungi penjual ${VarGlobal.shoes[index]['name']}?',
                  btnOkText: 'Hubungi',
                  btnOkOnPress: () async {
                    if (!await launchUrl(
                        Uri.parse('https://wa.me/6281353902427'))) {
                      throw Exception('Ada masalah');
                    }
                  }).show();
            },
            child: Container(
              height: 120,
              margin: EdgeInsets.only(bottom: 20),
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: 5,
                    )
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/${VarGlobal.shoes[index]['image']}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          VarGlobal.shoes[index]['name'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            VarGlobal.shoes[index]['price'],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
