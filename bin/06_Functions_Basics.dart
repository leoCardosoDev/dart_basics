void main(List<String> arguments) {

  String returnsStringNested() {
    return 'Olá';
  }

  returnsStringNested();
  returnsString();
}

String returnsString() {
  return ' mundo!';
}
