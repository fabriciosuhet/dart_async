// ignore_for_file: avoid_print

import 'dart:async';

void main() {
  print('Inicio Main');
  scheduleMicrotask(() => print('MicroTask #1'));
  Future.delayed(const Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('MicroTask #2'));
  print('Fim main');
}
