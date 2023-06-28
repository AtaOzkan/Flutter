void main(List<String> args) {
  Kisi emre = Kisi("emre", 19);
  Calisan ata = Calisan("ata", 62, 3532552);
  ata.kendinitanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas); //this koyunca kesin yukarıda isim ve yas girilmeli
  void kendinitanit() {
    print("Benim adım $isim ve yaşım $yas'idir.");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas)
      : super(name, age); //yukarıdaki ata ve 62 yi super ile kisiye gönder

  @override
  void kendinitanit() {
    super.kendinitanit();
    print("MAAŞIMDA $maas");
  }
}
