
void main(List<String> arguments) {
  final bot = ChatBot('123');
  bot.sendElevatedMessage('Hello World');
  final admin = Admin(specialAdminField: 12, firstName: 'Leo', lastName: 'Silva');
  admin.sendElevatedMessage('Olá ${admin.firstName}');
}

class User {
  final String firstName;
  final String lastName;
  User(this.firstName, this.lastName);
}

mixin ElevatedClient {
   void sendElevatedMessage(String text) {
    print('Sending a message with an elevated importance: $text');
  }
}

class Admin extends User with ElevatedClient {
  final double specialAdminField;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);
}

class ChatBot with ElevatedClient {
  final String id;
  ChatBot(this.id); 
}
