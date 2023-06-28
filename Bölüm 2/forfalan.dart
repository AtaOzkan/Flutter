import 'dart:io';

void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("sa");
  }
  int sayac = 0;

  while (sayac < 3) {
    print("$sayac");
    sayac++;
  }
  /*int sayac2 = 0;                  //önce kodu çalıştırır sonra şartı kontrol eder
  do {
    print("$sayac2");
  } while (sayac2 < 3); */

  //veri alma
  print("Adın:");
  String isim = stdin
      .readLineSync()!; //sayılar string olarak geliyo çevirmek istiyosan int? sayi = int.parse(stin.readLineSync()!);
  print("Girilen isim $isim");
}
