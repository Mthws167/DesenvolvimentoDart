main() {
  var salario = Salario(horasTrabalhadas: 300, valorHora: 8.5);
  print("Horas Trabalhadas: ${salario.horasTrabalhadas}");
  print("Valor da Hora: ${salario.valorHora}");
  print("Salário Bruto: ${salario.calcularSalarioBruto()}");

  var fgts = FGTS(horasTrabalhadas: 300, valorHora: 8.5);
  print("Valor do FGTS mensal: ${fgts.calcularValorFGTS()}");

  var valeAlimentacao = ValeAlimentacao(horasTrabalhadas: 300,valorHora: 8.5);
   print("Valor do Vale Alimentação mensal: ${valeAlimentacao.calcularValeAlimentacao()}");

}

class Salario {
  double horasTrabalhadas;
  double valorHora;

  Salario({
    required this.horasTrabalhadas,
    required this.valorHora,
  });

  double calcularSalarioBruto() {
    var salarioBruto = horasTrabalhadas * valorHora;
    return salarioBruto;
  }
}

class FGTS {
  double horasTrabalhadas;
  double valorHora;

  FGTS({
    required this.horasTrabalhadas,
    required this.valorHora,
  });

  double calcularValorFGTS() {
    var salarioBruto = horasTrabalhadas * valorHora;
    var FGTS = salarioBruto * 0.08;
    return FGTS;
  }
}

class ValeAlimentacao {
  double horasTrabalhadas;
  double valorHora;

  ValeAlimentacao({
    required this.horasTrabalhadas,
    required this.valorHora,
  });

  double calcularValeAlimentacao() {
    var salarioBruto = horasTrabalhadas * valorHora;
    var valeAlimentacao = salarioBruto * 0.2;
    return valeAlimentacao;
  }
}
