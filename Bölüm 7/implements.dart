void main(List<String> args) {}

abstract class Hayvan{}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler,Kosabilenler{         //implement sayeinde 1 den fazla sınıf ekleyebildik.İlla kalıtsal olması gerek yok
  @override
  void bark() {
    
  }

  @override
  void run() {
   
  }

}