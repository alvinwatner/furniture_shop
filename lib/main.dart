import 'package:flutter/material.dart';
import 'package:furniture_shop/pages/detail_product_page.dart';
import 'package:furniture_shop/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        DetailProductPage.routeName: (context) => const DetailProductPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
      title: 'Furniture Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
      ),
      home: const HomePage(),
    );
  }
}
