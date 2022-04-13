void show() {
  var resultado = verificarConceito(6, 8);
  print("O aluno está $resultado");
  var resultado2 = verificarConceito(1300, 50);
  print("É $resultado2");
  dynamic resultado3 = gestorSalario(200, 20);
  print("$resultado3");
}

String verificarConceito(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'aprovado' : 'reprovado';
}

String verficarSalario(double salario, double valorDesconto) {
  double desconto = valorDesconto * 100;
  double salarioFinal = salario * desconto;
  return (salario > salarioFinal) ? "Salário Posotivo" : "Salário negativo";
}

String gestorSalario(double quantidadeHoras, double valorHora) {
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
  return ("O valor do salário líquido é : $salarioLiquido");
}
