import 'dart:io';

void dadosDiscilplina(){

   print("Informe o seu ID:");
  var id = stdin.readLineSync();

  print("Informe o seu nome:");
  var nome = stdin.readLineSync();

  print("Informe seu CH:");
  var ch = stdin.readLineSync()!;

  print("Informe a sua série:");
  var serie = stdin.readLineSync();

  double ch0 = double.parse(ch);
  var presencaMinima = ch0 * 0.75;

  print('''
Disciplina:
    ID: ${id} ;
    Nome: ${nome} ; 
    CH: ${ch} ; 
    Série: ${serie} série ;
    Presença mínima: ${presencaMinima}.
''');
}