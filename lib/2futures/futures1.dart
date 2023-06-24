// ignore_for_file: avoid_print


void main() {
  print('Inicio do  P1');
  processo2();
  // 2 status (incompleto, concluido (Com valor, com erro))
  // Concluido com valor  --> Then
  // Comcluido com error --> catchError ou onError
  // WhenComplete sempre será executado!!

  processo3().then((mensagem) {
    print(mensagem);
  });

  processo3().then((mensagem) {
    // throw Exception();
  }, onError: (error) {
    print('Error de dentro do then');
  });

  processo4().then(
    (mensagem) => print('Mensagem do P4 $mensagem'),
    onError: (error) {
      print('Tratando o error pelo onError do then');
    },
  );

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('Finalizou com sucesso'));

  print('Fim do P1');
}

Future<String> processo4() {
  print('Inicio P4');
  return Future.delayed(const Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(const Duration(seconds: 1), () => 'Fim do P3');
}

Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(const Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}
