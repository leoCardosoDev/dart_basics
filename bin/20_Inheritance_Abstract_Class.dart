import 'package:meta/meta.dart';

void main(List<String> arguments) {}

abstract class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  @mustCallSuper
  void signOut() {
    print('Signing out');
  }

  void myMethod();
  int get property;
}

class Admin extends User {
  final double specialAdminField;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  @override
  String get fullName => 'Admin: ${super.fullName}';

  @override
  void signOut() {
    print('Performing admin-specific sign out steps');
    super.signOut();
  }
  
  @override
  void myMethod() {
  }
  
  @override
  int get property => throw UnimplementedError();


}
