// ignore_for_file: avoid_print

import 'package:dart_async/7modelos/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'cidade.dart';

void main() {
  // buscarCEP();
  buscarUser();
}

Future<void> buscarCEP() async {
  var url = 'https://viacep.com.br/ws/72005515/json/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var responseData = convert.jsonDecode(response.body);
    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);
    // }

    var cidade = Cidade.fromJson(response.body);
    print(cidade.cep);
    print(cidade.logradouro);
    print(cidade.bairro);

    print(cidade.toMap());
    print(cidade.toJson());

  }
}

Future<void> buscarUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
  }
}
