void main(List<String> args) {
  Asker mehmet = Asker("mehmet", 43);
  Er hasan = Er("hasan",23);
  hasan.memleketdegis("Çorum");
  hasan.selamla();
}

class Asker {
  String ad = "";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker çalıştı");
  }
  void selamla() {
    print("Adım $ad yaşım $yas memleket $memleket'idir.");
  }
}

class Er extends Asker {
  Er(String ad,int yas):super(ad,yas) {         //super üst sınıfa git demek
    print("Er çalıştı");
  }
  void memleketdegis(String yenimemleket){
    super.memleket = yenimemleket;
  }
}
