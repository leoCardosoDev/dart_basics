import 'package:freezed_annotation/freezed_annotation.dart';

part '28_Freeed_Union.freezed.dart';

void main(List<String> arguments) {
  const resultSuccess = Result.success(100);
  print(resultSuccess.when(
    loading: () => 'Wait, while we are loading the data',
    success: (value) => 'Yes data gotten successfully: $value', 
    failure: (message) => 'Oh, no! An error occured: $message'
  ));
  
  print(resultSuccess.maybeWhen(
    orElse: () => '',
    failure: (message) => 'Oh, no! An error occured: $message'
  ));

  print(resultSuccess.map(
    loading: (loadingCase) => 'Wait, while we are loading the data',
    success: (successCase) => 'Yes data gotten successfully: ${successCase.value}', 
    failure: (failureCase) => 'Oh, no! An error occured: ${failureCase.errorMessage}'
  ));
}

@freezed
class Result with _$Result {
  const Result._();
  const factory Result.loading() = _Loading;
  const factory Result.success(int value) = _Success;
  const factory Result.failure(String errorMessage) = _Failure;
}
