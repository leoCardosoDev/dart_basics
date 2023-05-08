import 'package:freezed_annotation/freezed_annotation.dart';

part '27_Freezed_Data_Class.freezed.dart';

void main(List<String> arguments) {
  final person1 = Person(age: 15, name: "Leo Silva");
  final person1Update = person1.copyWith(age: person1.age + 1);

  print(person1.age);
  print(person1Update.age);

  person1.toString();
}

@freezed
class Person with _$Person {
  const Person._();
  const factory Person ({
    required String name,
    required int age,
  }) = _Person;
}
