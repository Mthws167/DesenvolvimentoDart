import 'dart:io';

void repeticaoUm() {
  var nome;
  var ra;
  var anoNascimento;
  var serie;

  for (int i = 0; i < 3; i++) {
    print("Informe o nome do ${i + 1}º aluno ");
    nome = stdin.readLineSync()!;
    print("Informe o RA do ${i + 1}º aluno:");
    ra = stdin.readLineSync()!;
    print("Informe o ano de nascimento do ${i + 1}º aluno:");
    anoNascimento = stdin.readLineSync();
    print("Informe a série do ${i + 1}º aluno");
    serie = stdin.readLineSync();
    print("\n");
  }
}
