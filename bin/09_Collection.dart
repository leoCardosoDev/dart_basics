void main(List<String> arguments) {

  List<int> myList = [9,23,37];
  final firstElement = myList[0];
  print(firstElement);

  final myList2 = [1,2,3, "Hello", 2.4];
  <int>[1,2,3,4];

  print(myList2[2]);

  Map<String, Object> myMap = {
    'name': 'John Doe',
    'age': 42,
    'registered': true
  };

  final name = myMap['name'];
  print(name);

  Set<int> mySet = {1, 2, 3, 4, 5};
  print(mySet.length);
}
