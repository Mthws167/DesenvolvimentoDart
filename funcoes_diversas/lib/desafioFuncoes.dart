import 'dart:io';

void desafio() {
  print("--------------- Funções ---------------");
  print("Informe as duas notas do aluno:");
  double nota1 = double.parse(stdin.readLineSync()!);
  double nota2 = double.parse(stdin.readLineSync()!);
  print("Informe a função que deseja executar:");
  print("[1] - Verificar aprovação.");
  print("[2] - Verificar maior nota.");
  print("[3] - Calcular a média.");
  print("[0] - Sair.");

  int funcao = int.parse(stdin.readLineSync()!);

  switch (funcao) {
    case 1:
      {
        if ((nota1 + nota2) > 6) {
          print("Aprovado!");
        } else {
          print("Reprovado!");
        }
        break;
      }
    case 2:
      {
        if (nota1 > nota2) {
          print("$nota1 é a maior nota");
        } else {
          print("$nota2 é a maior nota");
        }
        break;
      }
    case 3:
      {
        double media = (nota1 + nota2) / 2;
        print("A média é $media");
        break;
      }
  }
}
