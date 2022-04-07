import 'dart:io';

void conceitoRepeticao() {
  for (int i = 0; i < 3; i++) {
    print("Informe o nome do ${i + 1}º aluno ");
    var nome = stdin.readLineSync();
    print("Informe o RA do ${i + 1}º aluno:");
    var ra = stdin.readLineSync();
    print("\n");
  }

  for (int i = 0; i < 2; i++) {}
}
