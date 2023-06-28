void main(List<String> args) {
  int sayi1 = 12;
  int sayi2 = 15;

  if (sayi1 < sayi2) {
    print("Bla bla");
  } else if (sayi2 > sayi1) {
    print("Blaaaa");
  } else {
    print(
        "HEYEYEYE"); //if (notdegeri >=90 && not degeri<=100)         && ve demek
  }

  int kucuk;

  sayi1 < sayi2 ? kucuk = sayi1 : kucuk = sayi2; //          ? if demek : else demek
  print("Küçük sayı $kucuk'idir.");

  String? ad = null;
  String? soyad = "sa";
  String mesaj;

  mesaj = ad ?? soyad;           // ?? demek ad null ise 2. olucak null değilse 1.olucak
  print("Merhaba $mesaj");
}
