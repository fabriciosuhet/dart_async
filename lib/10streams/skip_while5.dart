// ignore_for_file: avoid_print

Future<void> main() async {
  print('INICIO');
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero){
    print('Numero que chegou na skipwhile $numero');
    return numero < 5;
  });
 
// Await for
  await for (var i in stream) {
    print('O número chegou no await for $i');
  }
  print('FIM');
}

int callback(int value) {
  print('Callback valor que chegou $value');
  return (value + 1) * 2;
}
