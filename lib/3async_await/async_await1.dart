// ignore_for_file: avoid_print

Future<void> main() async {
  // processo1().then((mensagem) {
  //   processo2().then((mensagem) => null);
  //   print('Mensagem é $mensagem');
  // });

  try {
    print('Inicio do Main');
    var mensagem = await processo1();
    print(mensagem);
    var mensagem2 = await processo2();
    print(mensagem2);
    await processo3();
  } on Exception catch (err) {
    print('Erro na chamada do processo3  $err');
  }
  print('Fim do Main');
}

Future<String> processo1() {
  print('Inicio P1');
  return Future.delayed(const Duration(seconds: 1), () => 'Fim do processo P3');
}

Future<String> processo2() {
  print('Inicio P2');
  return Future.delayed(const Duration(seconds: 1), () => 'Fim do processo P2');
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(const Duration(seconds: 1), () => throw Exception());
}
