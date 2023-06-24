// ignore_for_file: avoid_print

Future<void> main() async {
  var nomes = ['Fabrício', 'Thais', 'Suhet'];
  
  print('Inicio');

  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome));
  // });

  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  // nomes.forEach((nome) async {
  //   print(await saudacao(nome));
  // });
  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(const Duration(seconds: 1), (){
    print('Fim $nome');
    return 'Olá $nome';
  });
}
