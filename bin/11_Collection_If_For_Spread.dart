void main(List<String> arguments) {
  //bool isSignedIn = true;
  <String>[
    'This is a fake content',
    //if (isSignedIn) 'Sign out' else 'Sign In',
  ];

  final x = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final number in [1, 2, 2, 4]) number.toString()
  ];

  print(x);
  final listOne = ['hello', 'there', 'hi'];
  final listTwo = ['what', 'up', 'those'];

  final twoList = <String>[...listOne, ...listTwo];

  for (final list in twoList) {
    print(list);
  }
}
