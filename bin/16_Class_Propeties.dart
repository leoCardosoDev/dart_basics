void main (List<String> arguments) {
  final user = Usuario(firstName: 'Leonardo', lastName: 'Silva', email: 'joedoe@email.com');
  // user.email = 'lasdr';

  //print(user.getFullName());
  print(user.fullName);
  print(user.email);
}

class Usuario {
  final String firstName;
  final String lastName;
  String? _email;

  Usuario({
    required this.firstName,
    required this.lastName,
    required String email,
  }) {
    this.email = email;
  } 

  //String getFullName() => '$firstName $lastName';
  String get fullName => '$firstName $lastName';
  String get email => _email ?? 'E-mail not present';

  set email(String value) {
    if(value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }
}
