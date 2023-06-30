// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_print

import 'dart:async';

Future<void> main() async {

  print('Inicio Stream Controller');
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;
 
  outStream
      .listen((pessoa){
        print('Seja bem vindo ${pessoa.nome}');
      });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número $numero');
    inStream.add(Pessoa(nome: 'Fabrício Suhet $numero'));
    // await Future.delayed(const Duration(milliseconds: 500));
  }
  print('Fim Stream Controller');

  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
