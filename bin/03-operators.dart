void main(List<String> arguments) {
  int result;
  double resultDouble = 5 / 5;
  result = 5 ~/ 5;

  print(result);
  print(resultDouble);

  int x = 5;
  x++;
  print(x);
  x--;
  print(x);
  x = x + 5;
  print(x);
  x += 5;
  print(x);
  x -= 5;
  print(x);
  x *= 5;
  print(x);
  // x /= 5;
  x ~/= 5;
  print(x);

  bool isEqual1 = 5 == 10;
  bool isEqual2 = 5 != 10;
  print(isEqual1);
  print(isEqual2);

  String myString = 'Hello world $isEqual2';
  print(myString);
  String myString2 = 'Hello world ${5 + 5 / 2 * 3 + 123}';
  print(myString2);
}
