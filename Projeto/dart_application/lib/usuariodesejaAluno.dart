import 'dart:io';

void repeticaoDois() {
  dynamic quantidade;
  dynamic nome;
  dynamic ra;
  dynamic anoNascimento;
  dynamic serie;

  print("Informe quantas vezes deseja informar dados de alunos: ");
  quantidade = stdin.readLineSync();
  quantidade = int.parse(quantidade);
  int i = 0;
  while (i < quantidade) {
    print("Informe o nome do ${i + 1}º aluno: ");
    nome = stdin.readLineSync();
    print("Informe o RA do ${i + 1}º aluno:");
    ra = stdin.readLineSync();
    print("Informe o ano de nascimento do ${i + 1}º aluno:");
    anoNascimento = stdin.readLineSync();
    print("Informe a série do ${i + 1}º aluno");
    serie = stdin.readLineSync();
    print("\n");
    i++;
  }
}
