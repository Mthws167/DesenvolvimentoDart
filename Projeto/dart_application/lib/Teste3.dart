import 'dart:io';

void estruturaDecisao() {
  print("Informe quantitativo de presenças do aluno:");
  var presenca = stdin.readLineSync()!;

  print("Informe o nome do Aluno:");
  var aluno = stdin.readLineSync();

  print("Informe a Disciplina:");
  var disciplina = stdin.readLineSync();

  print("Informe a nota da Disciplina:");
  var notaDisciplina = stdin.readLineSync()!;

  print("Informe 3 notas:");
  var nota1 = stdin.readLineSync()!;
  var nota2 = stdin.readLineSync()!;
  var nota3 = stdin.readLineSync()!;

  print("Informe o CH da disciplina:");
  var ch = stdin.readLineSync()!;

  print("Informe a nota e quantidade de presença do aluno:");
  var nota = stdin.readLineSync()!;
  var presencaQuant = stdin.readLineSync()!;

  double presenca1 = double.parse(presenca);
  if (presenca1 <= presenca1 * 0.75) {
    String presenca1 = "Reprovado";
  } else {
    String presenca1 = "Aprovado";
  }

  double notaDisciplina0 = double.parse(notaDisciplina);
  if (notaDisciplina0 >= 100 * 0.6) {
    String notaDisciplina0 = "Aprovado";
  } else {
    String notaDisciplina0 = "Reprovado";
  }

  double nota01 = double.parse(nota1);
  double nota02 = double.parse(nota2);
  double nota03 = double.parse(nota3);
  String maior = '';
  String menor = '';
  if (nota01 > nota02 && nota01 > nota03) {
    maior = "Maior nota ${nota01}";
  } else {
    menor = "Menor nota ${nota01}";
  }
  if (nota02 > nota01 && nota02 > nota03) {
    maior = "Maior nota ${nota02}";
  } else {
    menor = "Menor nota ${nota02}";
  }
  if (nota03 > nota01 && nota03 > nota02) {
    maior = "Maior nota ${nota03}";
  } else {
    menor = "Menor nota ${nota03}";
  }

  double media = (nota01 + nota02 + nota03) / 3;

  double presenca0 = double.parse(presencaQuant);
  double nota0 = double.parse(nota);
  double ch0 = double.parse(ch);
  String aprovado = '';
  String reprovado = '';
  if (presenca0 <= ch0 && nota0 <= 100 * 0.6) {
    reprovado = "Reprovado por falta e conceito";
  } else if (presenca0 <= ch0 && nota0 >= 100 * 0.6) {
    reprovado = "Reprovado por falta";
  } else if (presenca0 >= ch0 && nota0 <= 100 * 0.6) {
    reprovado = "Reprovado por conceito";
  } else {
    aprovado = "Aproado!!!";
  }

  print('''
  ${aluno}:
      ${presenca1} presenças;
  ${disciplina}:
      Nota: ${notaDisciplina0} ;
  Notas:
      Maior nota: ${maior} ;
      Média: ${media}
      Menor nota: ${menor} ;
  O Aluno está:
      ${aprovado} ${reprovado}.

  ''');
}
