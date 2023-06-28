void main(List<String> args) {
  try {
    Ogrenci ata = Ogrenci(-5);
    print(ata.yas);
  } on AgeEx catch (e) {
    print(e.mesaj);
  }
}

class AgeEx implements Exception {
  String mesaj;

  AgeEx({this.mesaj = "AgeEXCEPTİON"});      //Throwdaki mesaj yazmazsa varsyalıan değer

  @override
  String toString() {
    return "Hatanın tostring metodu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeEx(mesaj: "Eksi olamazz");
      
    } else
      this.yas = yas;
  }
}
