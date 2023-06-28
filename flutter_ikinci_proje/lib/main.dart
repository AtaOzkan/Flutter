import 'package:flutter/material.dart';
import 'package:flutter_ikinci_proje/constants/app.constants.dart';
import 'package:flutter_ikinci_proje/widgets/ortalama.hesapla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dinamik Ortalama Hesapla",
      theme: ThemeData(
        primaryColor: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:  OrtalamaHesaplaPage(),
    );
  }
}