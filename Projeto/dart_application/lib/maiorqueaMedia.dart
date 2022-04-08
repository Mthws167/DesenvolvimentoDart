import 'dart:io';

void decisaoDois() {
  print("Informe a Disciplina:");
  var disciplina = stdin.readLineSync();

  print("Informe a nota da Disciplina:");
  var notaDisciplina = stdin.readLineSync()!;

  double notaDisciplina0 = double.parse(notaDisciplina);
  if (notaDisciplina0 > 100 * 0.6) {
    String notaDisciplina0 = "Maior que a média de aprovação";
    print('''${disciplina} : 
    Nota: ${notaDisciplina0} ''');
  } else {
    String notaDisciplina0 = "Menor que a média de aprovação";
    print('''${disciplina} : 
    Nota: ${notaDisciplina0} ''');
  }
}
