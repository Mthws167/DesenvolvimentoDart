import 'dart:io';

void repeticaoCinco() {
  var quantidade;

  print("Informe quantas vezes deseja informar dados da disciplina: ");
  quantidade = stdin.readLineSync();
  quantidade = int.parse(quantidade);
  int i = 0;
  while (i < quantidade) {
    print("Informe o nome da Disciplina:");
    var disciplina = stdin.readLineSync();

    print("Informe o nome do aluno:");
    var nome = stdin.readLineSync();

    print("Informe a nota final e quantidade de faltas do aluno:");
    var nota = stdin.readLineSync()!;
    var faltaQuant = stdin.readLineSync()!;

    double falta0 = double.parse(faltaQuant);
    double nota0 = double.parse(nota);
    String aprovado = '';
    String reprovado = '';
    if (falta0 <= falta0 * 0.75 && nota0 < 100 * 0.6) {
      reprovado = "Reprovado por falta e conceito";
    } else if (falta0 <= falta0 * 0.75 && nota0 > 100 * 0.6) {
      reprovado = "Reprovado por falta";
    } else if (falta0 >= falta0 * 0.75 && nota0 < 100 * 0.6) {
      reprovado = "Reprovado por conceito";
    } else {
      aprovado = "Aprovado!!!";
    }

    print('''
      
  ${nome} está:${aprovado} ${reprovado} na disciplina de ${disciplina}.

  ''');
    i++;
  }
}
