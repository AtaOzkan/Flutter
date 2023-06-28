class CemberDaire {
  int _yaricap = 1;
  double _PI = 3.14;

  CemberDaire(int yaricap) {
    _yariCapKontrol = yaricap;
  }

  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double cevreHesapla() {
    return _PI * 2 * _yaricap;
  }

  double alanHesapla() {
    return _PI * _yaricap * _yaricap;
  }
}
