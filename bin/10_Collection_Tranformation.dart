void main(List<String> arguments) {
  final names = ['Leonardo', 'Priscila', 'Mattew'];

  final nameLengths = names.map((name) => name.length).toList();
  final name = nameLengths[0];
  print(name);

  final namesFiltered = names.where((name) => name.length == 8).toList();
  for (int i = 0; i < namesFiltered.length; i++) {
    print(namesFiltered[i]);
  }

  for (final name in namesFiltered) {
    print('Other for $name');
  }

  namesFiltered.forEach((name) => print('ForEach $name'));
  namesFiltered.forEach(print);
}
