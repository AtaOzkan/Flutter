import 'dart:async';

void main(List<String> args) {
  Function fonksiyon = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon(4, 6);

  var f2 = (int s) => s * 2;

  var f3 = (int a) {
    return a * 2;
  };

  var sayi = f2(6);
  print(sayi);
  print(f3(7));
}
