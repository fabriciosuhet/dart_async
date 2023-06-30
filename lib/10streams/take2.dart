// ignore_for_file: avoid_print

Future<void> main() async {
  print('INICIO');
  const interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  
// Await for 
  await for (var i in stream) {
    print(i);
  }
  print('FIM');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
