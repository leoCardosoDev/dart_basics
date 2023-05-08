void main(List<String> arguments) {
  final x = 'HELLO'.duplicate;
  print(x);
}

extension StringDuplication on String {
  String get duplicate => this + this;
  
}
