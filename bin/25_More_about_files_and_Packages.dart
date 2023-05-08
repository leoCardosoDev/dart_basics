part './pkg/other_file.dart';
void main(List<String> arguments) {
  _oppositeWay();
}

class _PackagesPrivateClass {
  String _packagesPrivateFields;
  _PackagesPrivateClass._(this._packagesPrivateFields);

  void thisWay() {
    print(_packagesPrivateFields);
  }
}
