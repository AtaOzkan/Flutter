void main(List<String> args) {
  Map<String, dynamic> ata = {"soyad": "za", "yas": 34, "bekarmi": true};    //Map() ya da {};
  for (String i in ata.keys) {
    print(ata[i]);
  }

  for (var a in ata.entries) {
    print("Key: ${ata.keys} değeri : ${a.value}");
  }

  if (ata.containsKey("yas")) {
    print("Bulunan yaş ${ata['yas']}");
  }
}
