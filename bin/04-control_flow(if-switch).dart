void main(List<String> arguments) {
  final myInteger = 5;
  if (myInteger == 10) {
    print("It's ten!");
  } else if (myInteger == 9) {
    print("It's nine");
  } else if (myInteger > 20) {
    print('Greater than twenty');
  } else {
    print(myInteger);
  }

  final value = 5;

  switch (value) {
    case 10:
      print("It's ten!");
      break;
    case 9:
      print("It's nine");
      break;
    //case (int n when n > 20):
     // print('Greater than twenty');
      //break;
    default:
      print(value);
      break;
  }
}
