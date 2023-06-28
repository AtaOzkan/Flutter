void main(List<String> args) {
  var bmw = Arabam(1943, "bmw");
  /* bmw.marka = "bmw";
  bmw.modelyili = 2435; */
  bmw.fonksiyon();

  var suzuki = Arabam.modelyiliolmayan("suzuki");
  suzuki.fonksiyon();
}

class Arabam {
  int? modelyili;
  String? marka;

  Arabam(int? modelyili1, String? marka1) {
    //en iyisi Arabam(this.modelyili,this.marka)
    print("aaaaaaaaaaa");

    /*this.modelyili = modelyili;
    this.marka = marka;*/

    modelyili = modelyili1;
    marka = marka1;
  }
  Arabam.modelyiliolmayan(this.marka) {
    print("ZA");
  }

  void fonksiyon() {
    print("Arabanın model yılı: $modelyili, markası $marka'dır.");
  }
}
