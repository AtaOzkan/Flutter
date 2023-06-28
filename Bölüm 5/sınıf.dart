void main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.no = 63;
  emre.ad = "Emre";
  emre.aktifmi = true;
  var ata = Ogrenci();
  ata.no = 653;
}

class Ogrenci {
  int no = 1;
  String ad = "";
  bool aktifmi = true;

  void derscalis() {
    print("Ders çalışıyo");
  }
}
