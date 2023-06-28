void main(List<String> args) {
  var emre = Ogrenci("emre", 155);
  var ata = Ogrenci.idsiz("ata");
  var ayse = Ogrenci.factorykurucusu("ayşe", -35);
  print(ayse.ad);
  print(ayse.id);
}
class Ogrenci {
  String? ad;
  int? id;

  Ogrenci(this.ad, this.id) {        //factory harici return döndüremez kurucular
    print("Varsayılan kurucu çalıştı");
  }
  Ogrenci.idsiz(this.ad) {
    print("İsimlendirilmiş kurucu çalıştı");
  }
  factory Ogrenci.factorykurucusu(String ad, int id) {
    if (id < 0) {
      return Ogrenci(ad, 7);
    } else
      return Ogrenci(ad, id);
  }
}
