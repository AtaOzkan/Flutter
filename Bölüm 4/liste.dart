void main(List<String> args) {
  List<int> sayilar =
      List.filled(4, 5); //4 elemanlı elemanlar varsayılan olarak 5 olacak
  sayilar[0] = 3;
  sayilar[3] = 8;
  print(sayilar);
  List aa = List.filled(4, "");
  aa[0] = 5;
  aa[1] = 6;
  print(aa);

  for (int i = 0; i < sayilar.length; i++) {
    print(sayilar[i]);
  }
  print("*******************");
  for (int oankieleman in sayilar) {
    print(oankieleman);
  }

  List adam = []; /*  == List adam = List.empty(growable: true;)    */
  adam.add(24);
  print(adam);

  List merhaba = List.filled(3, 6, growable: true);
  merhaba.add(42);
}
