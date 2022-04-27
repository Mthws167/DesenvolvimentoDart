import 'dart:io';

void main() {
  par(0, 0, eValidar);
}
/*
a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo. função "hospedeira" : solicitar um número
Exercício 01 - implemente as funções
b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.
c) Função que solicite a quantidade de dias trabalhadas, valor que recebe por hora e calcule o salarário para: (1) auxiliar; (2) júnior; e (3) pleno.
Exercício 02 - para cada função "hospedeira", faça defina uma função anônima.
*/

void par(int opcao, int valor, bool Function(int numero) eValidar) {
  String mensagem = ('''
  ----------Gestor de Salário----------
  [1] - Par
  [2] - Maior que Zero
  [3] - Primo
  -------------------------------------
  ''');
  print(mensagem.toUpperCase());
  opcao = int.parse(stdin.readLineSync()!);
  print("Informe o Número:");
  valor = int.parse(stdin.readLineSync()!);
  String resultado = '';
  switch (opcao) {
    case 1:
      if (valor % 2 == 0) {
        print("Par");
      }
      break;
    case 2:
      if (valor > 0) {
        print("Maior que Zero");
      }
      break;
    case 3:
      if (valor % 2 == 1) {
        print("Primo");
      }
      break;
  }
  print('$resultado');
}

bool eValidar(int numero) {
  if (numero / 2 == 0) {
    return true;
  } else if (numero > 0) {
    return true;
  } else if (numero / 2 == 1) {
    return true;
  } else {
    return false;
  }
}
