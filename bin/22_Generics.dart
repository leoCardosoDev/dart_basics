void main(List<String> arguments) {}

abstract class DataReader<T> {
  T readData();
}

void myMethod<T>(T arg) {}

class IntegerDataReader implements DataReader<int> {
  @override
  readData() {
    print('performace logic');
    return 12345;
  }
}

class StringDataReader implements DataReader<String> {
  @override
  readData() {
    print('performace logic');
    return 'Hello World';
  }
}
