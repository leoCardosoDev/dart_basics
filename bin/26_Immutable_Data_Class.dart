import 'package:meta/meta.dart';

void main(List<String> arguments) {
  final person1 = Person(age: 15, name: "Leo Silva");
  final person1Update = person1.copyWith(age: person1.age + 1);

  print(person1.age);
  print(person1Update.age);
}

@immutable
class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(name: name ?? this.name, age: age ?? this.age);
  }
}
