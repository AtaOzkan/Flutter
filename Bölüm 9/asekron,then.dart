void main(List<String> args) {
  print("Anne yolladı");
  print("Çocuk evden çıktı");
  Future<String> sonuc = uzunIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Kahvaltı hazır");
}

Future<String> uzunIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return "Çocuk eve gelir";
    throw Exception("Ekmek kalmamış");
  });

  return sonuc;
}

