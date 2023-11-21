import 'dart:async';

import 'package:http/http.dart';

void main(List<String> arguments) async {
  final result = await getPosts();
  print(result);

  Client().get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
  .then((response) => print(response.body))
  .catchError((e) => print('error -> $e'));
}

Future<String> getPosts() async {
  final result = await Client().get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  return result.body;
}

