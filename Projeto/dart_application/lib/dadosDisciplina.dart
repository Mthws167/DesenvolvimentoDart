import 'dart:io';

void variaveisTres() {
  print("Informe o seu ID:");
  var id = stdin.readLineSync();

  print("Informe o nome do curso:");
  var nome = stdin.readLineSync();

  print("Informe o CH:");
  var ch = stdin.readLineSync()!;

  print("Informe a Série:");
  var serie = stdin.readLineSync();

  double ch0 = double.parse(ch);
  var presencaMinima = ch0 * 0.75;

  print('''
  Dsiciplina:
      ID: ${id} ;
      Nome do Curso: ${nome} ; 
      Carga Horaria: ${ch} ; 
      Série: ${serie}º série ;
      Presença Mínima : ${presencaMinima} ;
        ''');
}
