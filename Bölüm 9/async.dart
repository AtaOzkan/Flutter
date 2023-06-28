void main(List<String> args) async{
  print("Kişi verisisi getirelecek");
  String kisi = await kisiverisi();
  print(kisi.length);
  print("İşlem bitti");
}


Future<String> kisiverisi(){
  return Future<String>.delayed(Duration(seconds: 3),(){
    return "Kişi adı:Ata";
  });
}