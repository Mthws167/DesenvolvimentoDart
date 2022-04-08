import 'dart:io';

void variaveisUm() {
  print("Informe o seu ID:");
  var id = stdin.readLineSync();

  print("Informe o nome do curso:");
  var nome = stdin.readLineSync();

  print("Informe o CH:");
  var ch = stdin.readLineSync()!;

  print("Informe a quantidade de série:");
  var serie = stdin.readLineSync();

  double ch0 = double.parse(ch);
  var presencaMinima = ch0 * 0.75;

  print("Informe a média de aprovação:");
  var media = stdin.readLineSync();

  print('''
  Curso:
      ID: ${id} ;
      Nome do Curso: ${nome} ; 
      Carga Horaria: ${ch} ; 
      Qauntidade de Séries: ${serie} séries ;
      Porcentagem de presença: ${presencaMinima} ;
      Média de aprovação: ${media}.
        ''');
}
