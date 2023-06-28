void main(List<String> args) { 
  String not = "BA";

  switch (not) {                //swtichde çok fazla if else yapmak yerine tercih edilir bool ve double olmaz
    case "AA":
      print("Notunuz 90-100 arasındadır.");
      break;

    case "BA":
      print("Notunuz 80-90 arasındadır.");
      break;

    default:
      {
        print("Hatalı değer");
      }
  }

     /*      || veya demek  !tam tersi false yerine true mesela
  double sayi1 = 9;
  sayi1 += 5;               bir işlemel ++sayi1 ise önce arttır sonra işlem sayi1++ ise önce işlem sonrar sayi1 1 artar
  print(sayi1);
  */

}
