import 'dart:async';

Stream<int> generator() async* {
  yield 5;
  yield 8;

  for (var i = 0; i < 4; i++) {
    yield i;
  }
}

void main() {
  print('one');
  final result = generator();
  print('two');
  result.listen((event) {
    print(event);
  });
  print('three');
  print('four');
  print('five');
  print('six');
  print('seven');
}
