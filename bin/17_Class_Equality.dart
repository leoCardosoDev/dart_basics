// ignore_for_file: public_member_api_docs, sort_constructors_first
void main (List<String> arguments) {
  final user1 = Usuario(firstName: 'Leonardo', lastName: 'Silva');
  final user2 = Usuario(firstName: 'Leonardo', lastName: 'Silva');

  print(user1 == user2);
}

class Usuario {
  final String firstName;
  final String lastName;

  Usuario({
    required this.firstName,
    required this.lastName,
  });

  @override
  bool operator ==(covariant Usuario other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstName == firstName &&
      other.lastName == lastName;
  }

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;
}
