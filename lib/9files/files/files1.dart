// ignore_for_file: avoid_print

import 'dart:io';

Future<void> main() async {
  var file = File('lib/9files/files/file.txt');

  //  Leitura Sincrona
  // var fileData = file.readAsStringSync();
  // print(fileData);

  //  Leitura Assincrona
  // var fileData = await file.readAsString();
  // print(fileData);

  //  Leitura linha Sincrona
  // var fileLista = file.readAsLinesSync();
  // print(fileLista[2]);

  //  Leitura linha Assincrona
  // var fileLista = await file.readAsLines();
  // print(fileLista[2]);

  var file2 = File('lib/9files/files/file2.txt');
  // await file2.writeAsString('Academia do Flutter\n', mode: FileMode.append);
  // file2.writeAsStringSync('Academia do Flutter\n', mode: FileMode.append);
  var listaNomes = ['Fabrício', 'Suhet', 'Thais'];
  var file3 = File('lib/9files/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  for (var nome in listaNomes) {
    writeFile.write('$nome\n');
  }
}
