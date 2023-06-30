// ignore_for_file: avoid_print, file_names

Future<void> main() async {
  print('INICIO');
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream().take(10);

  stream = stream;
  stream.listen((numero) {
    print('Listen Value: $numero');
  });

  stream.listen((numero) {
    print('Listen 2 Value: $numero');
  });

  print('FIM');
}

int callback(int value) {
  print('Callback valor que chegou $value');
  return (value + 1) * 2;
}
