void main(List<String> args) {
  Generic<String> liste = Generic();
  liste.push("merhaba");
  print(liste.pop());
}

class Generic<T> {
  List<T> _listem = <T>[];
  void push(T yenieleman) {
    _listem.add(yenieleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
