import 'dart:io';

void mostrar() {
  String mensagem = ('''
  ----------Gestor de Salário----------
  [1] - Verificar o salário líquido
  [2] - Verificar salário bruto
  [3] - Verificar os descontos
  -------------------------------------
  ''');
  print(mensagem.toUpperCase());
  int opcao = int.parse(stdin.readLineSync()!);
  String resultado = '';
  if (opcao == 1) {
    resultado = interface(() {
      print('Informe a quantidade de horas trabalhadas:');
      double quantidadeHora = double.parse(stdin.readLineSync()!);
      print('Informe o valor das horas trabalhadas:');
      double valorHora = double.parse(stdin.readLineSync()!);
      print('Informe o valor do sindicato:');
      double valorSindicato = double.parse(stdin.readLineSync()!);
      print('Informe o INSS:');
      double inss = double.parse(stdin.readLineSync()!);
      print('Informe o FGTS:');
      double fgts = double.parse(stdin.readLineSync()!);
      double salarioTotal = quantidadeHora * valorHora;
      valorSindicato = valorSindicato / 100;
      inss = inss / 100;
      fgts = fgts / 100;
      double descontos = fgts + inss + valorSindicato;
      double salarioLiquido = salarioTotal + descontos;
      return 'O salário Líquido é R\$ ${(salarioLiquido)}';
    });
  } else if (opcao == 2) {
    resultado = interface(() {
      print('Informe a quantidade de horas trabalhadas:');
      double quantidadeHora = double.parse(stdin.readLineSync()!);
      print('Informe o valor das horas trabalhadas:');
      double valorHora = double.parse(stdin.readLineSync()!);
      double salarioTotal = quantidadeHora * valorHora;
      return 'O salário é R\$ ${(salarioTotal)}';
    });
  } else if (opcao == 3) {
    resultado = interface(() {
      print('Informe o valor do sindicato:');
      double valorSindicato = double.parse(stdin.readLineSync()!);
      print('Informe o INSS:');
      double inss = double.parse(stdin.readLineSync()!);
      print('Informe o FGTS:');
      double fgts = double.parse(stdin.readLineSync()!);
      double descontos = fgts + inss + valorSindicato;
      return 'O valot total de descontos é ${(descontos)}%';
    });
  }
  print(resultado.toUpperCase());
}

double salarioLiquido(double quantidadeHora, double valorHora,
    double valorSindicato, double inss, double fgts) {
  double salarioTotal = quantidadeHora * valorHora;
  valorSindicato = valorSindicato / 100;
  inss = inss / 100;
  fgts = fgts / 100;
  double descontos = fgts + inss + valorSindicato;
  double salarioLiquido = salarioTotal + descontos;
  return salarioLiquido;
}

double salarioBruto(double quantidadeHora, double valorHora) {
  double salarioTotal = quantidadeHora * valorHora;
  return salarioTotal;
}

double totalDescontos(double valorSindicato, double inss, double fgts) {
  double descontos = fgts + inss + valorSindicato;
  return descontos;
}

String interface(Function minhaFuncao) {
  return minhaFuncao();
}
