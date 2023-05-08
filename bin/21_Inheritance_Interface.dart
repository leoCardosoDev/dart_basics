void main(List<String> arguments) {}

class RegularClass {
  final int myField;

  RegularClass(this.myField);

  int get publicProperty => 123;

  String getSomeString() => 'Hello';
  
}

class OtherClass implements RegularClass {
  @override
  String getSomeString() {
    throw UnimplementedError();
  }

  @override
  int get myField => throw UnimplementedError();

  @override
  int get publicProperty => throw UnimplementedError();
}

abstract class DataReader {
  dynamic readData();
}

class IntegerDataReader implements DataReader {
  @override
  readData() {
    print('performace logic');
    return 12345;
  }
}
