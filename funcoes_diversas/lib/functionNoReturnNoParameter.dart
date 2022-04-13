import 'dart:io';

void show() {
  print("Funções sem retorno e sem parâmetro");
}

void verificarConceito() {
  print("informe a 1º nota: ");
  double nota01;
  var entrada = stdin.readLineSync();
  if (entrada != null) {
    nota01 = double.parse(entrada);
  } else {
    nota01 = 0.0;
  }

  print("Informe a 2º nota: ");
  double nota02 = double.parse(stdin.readLineSync()!);

  double media = (nota01 + nota02 / 2);
  if (media >= 6) {
    print("Aprovado!");
  } else {
    print("Reprovado!");
  }
  print((media >= 6) ? 'Aprovado!' : 'Reprovado!');
}

void verificarSalario() {
  print("Informe o valor do seu salário: ");
  double salario = double.parse(stdin.readLineSync()!);
  print("Informe o valor de desconto: ");
  double valorDesconto = double.parse(stdin.readLineSync()!);

  double desconto = valorDesconto / 100;

  double salarioFinal = salario * desconto;

  if (salario > salarioFinal) {
    print("Salário positivo!");
  } else {
    print("Salário Negativo!");
  }
}

void gestorSalario() {
  print("---------------Gestor de Salário---------------");
  print("Informe a quantidade de horas: ");
  double quantidadeHoras = double.parse(stdin.readLineSync()!);
  print("Informe o valor da Hora: ");
  double valorHora = double.parse(stdin.readLineSync()!);

  double salarioBruto = quantidadeHoras * valorHora;
  double valorSindicato = (salarioBruto * 0.03) - salarioBruto;
  double inss = (salarioBruto * 0.1) - salarioBruto;
  double fgts = (salarioBruto * 0.11) - salarioBruto;
  if (salarioBruto <= 900) {
    salarioBruto;
  } else if (salarioBruto <= 1500) {
    salarioBruto = salarioBruto * 0.05;
  } else if (salarioBruto <= 2500) {
    salarioBruto = salarioBruto * 0.1;
  } else {
    salarioBruto = salarioBruto * 0.2;
  }

  double totalDesconto = inss + fgts + valorSindicato;
  double salarioLiquido = salarioBruto - totalDesconto;
  print("O valor do salário líquido é : $salarioLiquido");
}
