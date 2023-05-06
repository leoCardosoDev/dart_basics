void main(List<String> arguments) {
  User user1 = const User(name: 'John', photoUrl: 'http://example.com/abc');
  print(user1.name);
  print(user1.hasLongName());
}

class User {
  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  bool hasLongName() {
    return name.length > 10;
  }
}
