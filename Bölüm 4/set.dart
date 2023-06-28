void main(List<String> args) {
  //set aynı değerleri almaz, index diye bir şey yok
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("ata");
  isimler.add("emre");
  isimler.add("ayşe");
  isimler.add("emre");

  for (String i in isimler) {
    print(i);
  }
  print("*******************");
  Set<int> numaralar = Set.from([4, 7, 3, 2, 2, 68, 8, 4, 2, 2, 5]);
  for (int i in numaralar) {
    print(i);
  }
}
