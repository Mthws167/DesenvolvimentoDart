import 'dart:io';

void solicitarDados() {
  print("Informe o seu RA:");
  var ra = stdin.readLineSync();

  print("Informe o seu nome:");
  var nome = stdin.readLineSync();

  print("Informe seu ano de nascimento:");
  var anoNascimento = stdin.readLineSync()!;

  print("Informe a sua série:");
  var serie = stdin.readLineSync();

  num anoNascimento0 = num.parse(anoNascimento);
  var idade = 2022 - anoNascimento0;

  print('''
Aluno:
    RA: ${ra} ;
    Nome: ${nome} ; 
    Ano de Nascimento ${anoNascimento} ;
    Idade: ${idade} anos ; 
    Série: ${serie} série.
''');
}
