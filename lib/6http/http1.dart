// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  // await buscarCEP();
  // await buscarPosts();
  // await buscarCepError();
  // await salvarPost();
  await atualizarPost();
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'Post novo',
    'body': 'descricao do post',
    'userId': 1,
  };

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  if (response.statusCode == 201) {
    print('Created');
  }
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapaRequest = {
    'id': 1,
    'title': 'Post alterado',
    'body': 'descricao do post',
    'userId': 1,
  };

  var response = await http.put(
    Uri.parse(url),
    body: convert.jsonEncode(mapaRequest),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    }
  );
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      // responseData.forEach((element) => print(element));
      for (var element in responseData) {
        print(element['id']);
      }
    }
  }
}

Future<void> buscarCEP() async {
  var url = 'https://viacep.com.br/ws/72005515/json/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

Future<void> buscarCepError() async {
  var url = 'https://viacep.com.br/ws/9999999/json/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    print('Ocorreu um problema mensagem ${response.reasonPhrase}');
  }
}
