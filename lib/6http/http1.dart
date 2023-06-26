// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  
  await buscarCEP();
  await buscarPosts();

}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      // responseData.forEach((element) => print(element));
      for (var element in responseData) {
        print(element);
      }
    }
  }
}

Future<void> buscarCEP () async {
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
