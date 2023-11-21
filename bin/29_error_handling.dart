void main(List<String> arguments) {
  try {
    final myInt = int.parse('19');
    print(myInt);
  } on FormatException catch (e) {
    //throw MyCustomException();
    print(e.message);
  } finally {
    print('This always runs');
    throw MyCustomError();
  }
}

class MyCustomException implements Exception {}

class MyCustomError extends Error {}
