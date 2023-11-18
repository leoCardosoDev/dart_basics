void main(List<String> arguments) {
  String returnsStringNested() {
    return 'Olá';
  }

  print(returnsStringNested());
  print(returnsString());
}

String returnsString() {
  return ' mundo!';
}
