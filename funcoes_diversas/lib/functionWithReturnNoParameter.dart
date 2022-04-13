import 'dart:async';
import 'dart:io';

void show() {
  var resultado = verificarConceito();
  print("o aluno está ${resultado}");
  var resultado2 = verificarSalario();
  print("É $resultado2");
  var resultado3 = gestorSalario();
  print(" $resultado3");
}

String verificarConceito() {
  print("Informe a nota 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Informe a nota 2:");
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarSalario() {
  print("Informe o salário: ");
  double salario = double.parse(stdin.readLineSync()!);
  print("Informe o desconto: ");
  double valorDesconto = double.parse(stdin.readLineSync()!);

  double desconto = valorDesconto * 100;
  double salarioFinal = salario * desconto;

  if (salario > salarioFinal) {
    return "Salário positivo";
  } else {
    return "Salário Negativo";
  }
}

String gestorSalario() {
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
  return ("O valor do salário líquido é : $salarioLiquido");
}
