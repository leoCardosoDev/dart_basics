void main(List<String> arguments) {
  final twicePlusFive = twiceAgainAgain((x) => x + 5);
  final result = twicePlusFive(3);

  print(result);
}

int g(int x) {
  return 1;
}

typedef IntTransformer = int Function(int);

IntTransformer twice(int Function(int) f) {
  return (int x) {
    return 1;
  };
}

IntTransformer twiceAgain(int Function(int) f) => g;

IntTransformer twiceAgainAgain(int Function(int) f) => (int x) => f(f(x));
