void main(List<String> args) {
  List a = [4, 2, 6, 8, 3];

  print(a.first);

  /*
  first, last, reversed, add, remove, removeAt => indexe göre , clear, contains,
  elementAt(2) => 2.indexi ver, indexOf(2) => 2 nin indexini ver, shuffle rastgele dğeiştirir    */

  var liste = [2, 6, 8];
  var sonListe = [...a, ...liste];                   //Böyle ikisini birleştirebiliyoruz
  print(sonListe);
}
