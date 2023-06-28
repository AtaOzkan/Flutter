import 'package:flutter/material.dart';
import 'package:flutter_fffffff/constants/constants.dart';
import 'package:flutter_fffffff/widgets/app_ortalama_hesaplayici.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ortalama Hesaplayıcı',
      theme: ThemeData(primaryColor: Constants.anaRenk),
      home: const appHesaplayici(),
    );
  }
}