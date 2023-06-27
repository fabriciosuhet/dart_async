import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  factory Cidade.fromJson(String source) {
    var jsonMap = jsonDecode(source);
    return Cidade.fromMap(jsonMap);
  }

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade $localidade, uf: $uf, ddd: $ddd)';
  }
}

// {
//   "cep": "72005-515",
//   "logradouro": "Rua 3C Chácara 28",
//   "complemento": "",
//   "bairro": "Setor Habitacional Vicente Pires",
//   "localidade": "Brasília",
//   "uf": "DF",
//   "ibge": "5300108",
//   "gia": "",
//   "ddd": "61",
//   "siafi": "9701"
// }