void main(List<String> args) {
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("0 olamaz");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("Hata var $e");
  } finally {
    print("İşlem bitti");
  }
}
