void main(List<String> arguments) {
  User user1 = const User(firstName: 'John', lastName: 'Doe', photoUrl: 'http://example.com/abc');
  print(user1.name);
  print(user1.hasLongName());
}

class User {
  final String name;
  final String firstName;
  final String lastName;
  final String photoUrl;

  const User({
    required this.firstName, 
    required this.lastName, 
    required this.photoUrl}):
    name = '$firstName $lastName';

    bool hasLongName() {
      return firstName.length > 10;
    }
}
