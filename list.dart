import 'dart:io';

void main() {
  List<int> numbers = [];
  getNum() {
    print("Sayı giriniz: ");
    var input = stdin.readLineSync();
    return input;
  };
  addNum(input) {
    int.parse(input);
    numbers.add(int.parse(input));
  }
  for (var i = 0; i < 10; i++) {
    try {
      addNum(getNum());
    } on Exception {
      print("Lütfen geçerli bir sayı giriniz: ");
      addNum(getNum());
    }
  }
  numbers.sort();
  List<int> reverse = new List.from(numbers.reversed);
  print("Küçükten büyüğe:\n${numbers}\nBüyükten küçüğe:\n${reverse}");
}