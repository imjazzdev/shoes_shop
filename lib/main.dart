import 'package:flutter/material.dart';
import 'package:shoes_shop/main_navigator.dart';
import 'package:shoes_shop/screen/login.dart';
import 'package:shoes_shop/screen/news_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/news-screen': (context) => const NewsScreen()
      },
    );
  }
}
