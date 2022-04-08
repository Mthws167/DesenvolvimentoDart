import 'dart:io';

void decisaoUm() {
  print("Informe quantitativo de presenças do aluno:");
  var presenca = stdin.readLineSync()!;

  print("Informe o nome do Aluno:");
  var aluno = stdin.readLineSync();

  double presenca1 = double.parse(presenca);
  if (presenca1 <= presenca1 * 0.75) {
    String presenca1 = "Reprovado";
    print(''' ${aluno} está ${presenca1}''');
  } else {
    String presenca1 = "Aprovado";
    print(''' ${aluno} está ${presenca1}''');
  }
}
