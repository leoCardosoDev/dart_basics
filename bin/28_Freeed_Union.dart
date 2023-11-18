import 'package:freezed_annotation/freezed_annotation.dart';

part '28_Freeed_Union.freezed.dart';

void main(List<String> arguments) {
  final myObject = SubClassTwo();

  if(myObject is SubClassOne) {
    //
  } else if(myObject is SubClassTwo) {
    //
  } else if(myObject is SubClassTwo) {
    //
  }
}

@freezed
class Result with _$Result {
  const Result._();
  const factory Result.success(int value) = _Success;
  const factory Result.failure(String errorMessage) = _Failure;
}

class SuperClass {}

class SubClassOne extends SuperClass {
  final int x = 123;
}

class SubClassTwo extends SuperClass {
  final String = 'Hey';
}

class SubClassThree extends SuperClass {
  final String = 'Hy';
}
