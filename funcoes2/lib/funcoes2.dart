import 'dart:io';

void mostrar() {
  print('''
  Escolha uma opção:
  [1] - Verificar a aprovação;
  [2] - Calcular a média;
  [3] - Verificar a mior nota.
''');
  int opcao = int.parse(stdin.readLineSync()!);
  print('Informe a 1º nota:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Informe a 2º nota:');
  double nota2 = double.parse(stdin.readLineSync()!);
  String resultado = '';
  if (opcao == 1) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      double media = (nota1 + nota2) / 2;
      if (media >= 6) {
        return "Aprovado!";
      } else {
        return "Reprovado!";
      }
    });
  } else if (opcao == 2) {
    resultado = interface(
        nota1, nota2, (double nota1, double nota2) => (nota1 + nota2) / 2);
  } else if (opcao == 3) {
    resultado = interface(nota1, nota2,
        (double nota1, double nota2) => (nota1 > nota2) ? nota1 : nota2);
  }
  print(resultado);
}

String verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'Aprovado!' : 'Reprovado!';
}

double maiorNota(double nota1, double nota2) {
  return (nota1 > nota2) ? nota1 : nota2;
}

double media(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media;
}

String interface(double nota1, double nota2, Function minhaFuncao) {
  return minhaFuncao(nota1, nota2);
}
