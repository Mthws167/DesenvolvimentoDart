import 'dart:io';

void repeticaoDois() {
  dynamic quantidade;
  dynamic nome;
  dynamic id;
  dynamic ch;
  dynamic serie;

  print("Informe quantas vezes deseja informar dados da disciplina: ");
  quantidade = stdin.readLineSync();
  quantidade = int.parse(quantidade);
  int i = 0;
  while (i < quantidade) {
    print("Informe o seu ID:");
    var id = stdin.readLineSync();

    print("Informe o nome do curso:");
    var nome = stdin.readLineSync();

    print("Informe o CH:");
    var ch = stdin.readLineSync()!;

    print("Informe a Série:");
    var serie = stdin.readLineSync();
    print("\n");
    i++;
  }
}
