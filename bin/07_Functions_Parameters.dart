void main(List<String> arguments) {}

void positionalParams(int x, double y, String greeting) {
  positionalParams(5, 3.5, 'Hello');
}

void optionalPositionalParams(int x, double y, [String? greeting]) {
  optionalPositionalParams(4, 5.3);
  optionalPositionalParams(4, 5.3, "Hello Optional");
}

void namedOptionalParams({int? x, double? y, String? greeting}) {
  namedOptionalParams(x: 3, y: 2.5, greeting: 'Hello World');
}

void namedRequiredParams(
    {required int width, required double height, required String greeting}) {
  namedRequiredParams(width: 2, height: 2.4, greeting: "Olá! Tudo bem?");
}
