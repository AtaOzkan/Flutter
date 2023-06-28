void main(List<String> args) {
  int Toplam = sayilariTopla(25, 65);            //burda s1=5 diyerek atayabiliyoz sırasız
  print(Toplam);
}

int sayilariTopla(int s1, int s2, [int s3 = 0]) {
  // =0 olunca 0  olr
  // köşeli olunca optional oluyor
  return s1 + s2 + s3;
}

