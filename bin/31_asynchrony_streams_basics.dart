void main(List<String> arguments) async {
  final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
  final subscription = myPeriodicStream.listen((event) {
    print('A second has passed $event');
  });
  await Future.delayed(const Duration(seconds: 5));
  subscription.cancel();
}
