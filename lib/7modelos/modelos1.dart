// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'cidade.dart';

void main() {
  buscarCEP();
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
