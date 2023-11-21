void main(List<String> arguments) async {
  createMessageStream().map((message) => message.toUpperCase()).listen((event) {
    print(event);
  });
}

Stream<String> createMessageStream() async* {
    yield 'Hello';
    await Future.delayed(const Duration(seconds: 3));
    yield 'Have you heard of...';
    await Future.delayed(const Duration(seconds: 2));
    yield 'Flutter';
  }
