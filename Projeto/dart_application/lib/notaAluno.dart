import 'dart:io';

void decisao5() {
  String aprovado = '';
  String reprovado = '';

  print("Informe o nome do Aluno:");
  var aluno = stdin.readLineSync();

  print("Informe as 4 notas do aluno(de 0 a 10):");
  var nota1 = stdin.readLineSync()!;
  var nota2 = stdin.readLineSync()!;
  var nota3 = stdin.readLineSync()!;
  var nota4 = stdin.readLineSync()!;

  int nota01 = int.parse(nota1);
  int nota02 = int.parse(nota2);
  int nota03 = int.parse(nota3);
  int nota04 = int.parse(nota4);

  double media = (nota01 + nota02 + nota03 + nota04) / 4;

  if (nota01 < 6) {
    print("Informe a nota da recuperação 1: ");
    var rec1 = stdin.readLineSync()!;
    int rec01 = int.parse(rec1);
    double media = (rec01 + nota02 + nota03 + nota04) / 4;
    if (media >= 10 * 0.6) {
      aprovado = "Aprovado!";
    } else {
      reprovado = "Reprovado!";
    }
    print('''
          ${aluno}:
          Notas:
             ${rec01}
             ${nota02}
             ${nota03}
             ${nota04}
          Média:
              ${media}
          -------------------------
          ${aluno} está ${aprovado}${reprovado}
    
  ''');
  } else if (nota02 < 6) {
    print("Informe a nota da recuperação 2: ");
    var rec2 = stdin.readLineSync()!;
    int rec02 = int.parse(rec2);
    double media = (nota01 + rec02 + nota03 + nota04) / 4;
    if (media >= 10 * 0.6) {
      aprovado = "Aprovado!";
    } else {
      reprovado = "Reprovado!";
    }
    print('''
          ${aluno}:
          Notas:
             ${nota01}
             ${rec02}
             ${nota03}
             ${nota04}
          Média:
              ${media}
          -------------------------
          ${aluno} está ${aprovado}${reprovado}
    
  ''');
  } else if (nota03 < 6) {
    print("Informe a nota da recuperação 3: ");
    var rec3 = stdin.readLineSync()!;
    int rec03 = int.parse(rec3);
    double media = (nota01 + nota02 + rec03 + nota04) / 4;
    if (media >= 10 * 0.6) {
      aprovado = "Aprovado!";
    } else {
      reprovado = "Reprovado!";
    }
    print('''
          ${aluno}:
          Notas:
             ${nota01}
             ${nota02}
             ${rec03}
             ${nota04}
          Média:
              ${media}
          -------------------------
          ${aluno} está ${aprovado}${reprovado}
    
  ''');
  } else if (nota04 < 6) {
    print("Informe a nota da recuperação 4: ");
    var rec4 = stdin.readLineSync()!;
    int rec04 = int.parse(rec4);
    double media = (nota01 + nota02 + nota03 + rec04) / 4;
    if (media >= 10 * 0.6) {
      aprovado = "Aprovado!";
    } else {
      reprovado = "Reprovado!";
    }
    print('''
          ${aluno}:
          Notas:
             ${nota01}
             ${nota02}
             ${nota03}
             ${rec04}
          Média:
              ${media}
          -------------------------
          ${aluno} está ${aprovado}${reprovado}
    
  ''');
  } else {
    if (media >= 10 * 0.6) {
      aprovado = "Aprovado!";
    } else {
      reprovado = "Reprovado!";
    }
    print('''
          ${aluno}:
          Notas:
             ${nota01}
             ${nota02}
             ${nota03}
             ${nota04}
          Média:
              ${media}
          -------------------------
          ${aluno} está ${aprovado}${reprovado}
    
  ''');
  }
}
