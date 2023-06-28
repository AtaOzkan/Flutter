void main(List<String> args) {
  User u1 = User();
  normal_User u2 = normal_User();
  User u3 = Admin();

  List<User> tumUserlar = [];
  tumUserlar.add(u1);
  tumUserlar.add(u2);
}
class User {
  String email = "";
  String password = "";

  void girisyap() {
    print("Giriş yapıldı");
  }
}

class Admin extends User {
  void Admino() {
    print("Admin içeride hocam");
  }

  @override //yukarısında girişyap var ama bunu kullan anlamında
  void girisyap() {
    print("Admin giriş yaptı");
  }
}

class normal_User extends User {
  void Userrr() {
    print("ZAZa");
  }
}
