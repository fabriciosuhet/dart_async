// ignore_for_file: avoid_print

void main() {
  print('Iniciou o processo');
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  m2();
  p2();
  print('Finalizou');
}

void m2() {
  print('Funcao 2');
}

void p2() {
  Future.delayed(const Duration(seconds: 2), (){
    print('Processo 2 sendo executado');
  });
}
