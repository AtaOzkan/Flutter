void main(List<String> args) {
  Sekil s1= Kare(5);
}

abstract class Sekil{     //bu soyut ve çok genelse abstract 
  double alanHesapla();

  double cevreHesapla();

  void selamla(){
    print("Ben şekil sınıfındayım");
  }
}

class Kare extends Sekil{

  int kenar;
  Kare(this.kenar); 
  @override
  double alanHesapla() {
    return kenar*kenar.toDouble();
  }
  @override
  double cevreHesapla() {
    return kenar*4.toDouble();
  }
}

