import 'package:flutter/material.dart';
import 'package:flutter_fffffff/model/ders.dart';

class DataHelper {
  static List<Ders> tumEklenenDersler = [];

  static dersEkle(Ders ders) {
    tumEklenenDersler.add(ders);
  }

  static List<String> _tumDerslerinHarfleri() {
    return ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FD"];
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1;
      case 'FD':
        return 0.5;
      case 'FF':
        return 0.0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> tumDersHarfleri() {
    return _tumDerslerinHarfleri()
        .map((e) => DropdownMenuItem<double>(
              child: Text(e),
              value: _harfiNotaCevir(e),
            ))
        .toList();
  }
}
