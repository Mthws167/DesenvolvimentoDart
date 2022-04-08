import 'dart:io';

void decisaoQuatro() {
  print("Informe o nome do aluno:");
  var nome = stdin.readLineSync();

  print("Informe a nota final e quantidade de presença do aluno:");
  var nota = stdin.readLineSync()!;
  var presencaQuant = stdin.readLineSync()!;

  double presenca0 = double.parse(presencaQuant);
  double nota0 = double.parse(nota);
  String aprovado = '';
  String reprovado = '';
  if (presenca0 <= presenca0 * 0.75 && nota0 <= 100 * 0.6) {
    reprovado = "Reprovado por falta e conceito";
  } else if (presenca0 <= presenca0 * 0.75 && nota0 >= 100 * 0.6) {
    reprovado = "Reprovado por falta";
  } else if (presenca0 >= presenca0 * 0.75 && nota0 <= 100 * 0.6) {
    reprovado = "Reprovado por conceito";
  } else {
    aprovado = "Aprovado!!!";
  }

  print('''
      
  ${nome} está:${aprovado} ${reprovado}.

  ''');
}
