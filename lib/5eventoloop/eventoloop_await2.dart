// ignore_for_file: avoid_print

import 'dart:async';

Future<void> main() async {
  print('Inicio Main');
  scheduleMicrotask(() => print('MicroTask #1'));
  await Future.delayed(const Duration(seconds: 1), () => print('Future #1 delayed'));
  await Future(() {
    var i = 0;
    while (i < 20000) {
      i++;
    }
    print('Future #2');
  });
  await Future(() => print('Future #3'));

  scheduleMicrotask(() => print('MicroTask #2'));
  print('Fim main');
}
