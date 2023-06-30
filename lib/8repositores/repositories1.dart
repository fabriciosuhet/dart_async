// ignore_for_file: avoid_print

import 'package:dart_async/8repositores/repositories/cidade_repository.dart';
import 'package:dart_async/8repositores/repositories/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(1);

    print(user?.name ?? 'Usuário não encontrado!');
    // if (user != null) {
    //   print(user.name);
    // } else {
    //   print('Usuário não encontrado!');
    // }
  } catch (e) {
    print('Error ao buscar cidade');
  }
}
