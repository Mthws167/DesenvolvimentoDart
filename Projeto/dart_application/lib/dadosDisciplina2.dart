import 'dart:io';

void repeticaoTres() {
  var nome;
  var id;
  var ch;
  var serie;

  for (int i = 0; i < 2; i++) {
    print("Informe o seu ID:");
    var id = stdin.readLineSync();

    print("Informe o nome do curso:");
    var nome = stdin.readLineSync();

    print("Informe o CH:");
    var ch = stdin.readLineSync()!;

    print("Informe a Série:");
    var serie = stdin.readLineSync();
  }
}
