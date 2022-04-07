import 'dart:io';

void conceitoAluno(){
  print("Informe o nome do Aluno:");
  var aluno = stdin.readLineSync();

  print("Informe as 4 notas do aluno:");
  var nota1 = stdin.readLineSync()!;
  var nota2 = stdin.readLineSync()!;
  var nota3 = stdin.readLineSync()!;
  var nota4 = stdin.readLineSync()!;

  int nota01 = int.parse(nota1);
  int nota02 = int.parse(nota2);
  int nota03 = int.parse(nota3);
  int nota04 = int.parse(nota4);

  if(nota01<0 && nota01>10){
    print("Informe números de 0 a 10!");
  }else if(nota02<0 && nota02>10){
    print("Informe números de 0 a 10!");
  }else if(nota03<0 && nota03>10){
    print("Informe números de 0 a 10!");
  }else if(nota04<0 && nota04>10){
    print("Informe números de 0 a 10!");
  }

  double media = (nota01+nota02+nota03+nota04)/4;
  String aprovado = '';
  String reprovado = '';
  if(media>=100*0.6){
    aprovado = "Aprovado!";
  }else{
    reprovado = "Reprovado!";
  }


  print('''
  ${aluno}:
    
  ''');

}