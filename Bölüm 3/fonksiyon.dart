void main(List<String> args) {
  alanHesapla(5, 6);
  print("Çarpım:" + sayilariCarp(6, 8).toString());
  print(maxOlan(9, 4));
}

alanHesapla(int sayi1, int sayi2) {
  print("Alan ${sayi1 * sayi2} ");
  return sayi1 * sayi2;
}

int sayilariCarp(int s1, int s2) => s1 * s2;           //Fonksiyon kısa gösterim

int maxOlan(int s1,int s2) => s1>s2 ? s1:s2;    //s1 s2 den büyükse s1, değilse s2