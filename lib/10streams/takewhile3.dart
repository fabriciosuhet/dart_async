// ignore_for_file: avoid_print

Future<void> main() async {
  print('INICIO');
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.takeWhile((int numero) {
    print('O número que chegou no takeWhile $numero');
    return numero <= 10;
  });

// Await for
  await for (var i in stream) {
    print('O número chegou no await for $i');
  }
  print('FIM');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
