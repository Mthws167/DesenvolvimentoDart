void show() {
  //verificarConceito(8, 6);
  //verificarSalario(1300, 80);
  gestorSalario(200, 20);
}

void verificarConceito(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print((media >= 6) ? 'Aprovado!' : 'Reprovado!');
}

void verificarSalario(double salario, double valorDesconto) {
  double desconto = valorDesconto / 100;
  double salarioFinal = salario * desconto;
  print((salario > salarioFinal) ? "Salário Positivo" : "Salário Negativo");
}

void gestorSalario(double quantidadeHoras, double valorHora) {
  print("---------------Gestor de Salário---------------");

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
