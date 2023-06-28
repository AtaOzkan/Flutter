void main(List<String> args) {
  Matematik sayi1 = Matematik(52, 525);
  sayi1.topla();
  print(Matematik.PI);
  Matematik.sinifadinisOyle(); 
}

class Matematik {
  //instance variable
  int s1 = 0;
  int s2 = 0;

  //class variable
  static double PI = 3.14;
  static void sinifadinisOyle() {
    print("MATTANIM BEN");
  }

  Matematik(this.s1, this.s2);

  void topla() {
    print("Toplam ${s1 + s2}");
  }
}
//final const