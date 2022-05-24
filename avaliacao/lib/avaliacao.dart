/*(i)  anonymous function e/ou arrow function (pelo menos 2 exemplos);
  (ii) parâmetros posicionais obrigatórios e opcionais; 
  (iii) parâmetros nomeados obrigatórios e opcionais. */

import 'dart:io';

void mostrar() {
  try {
    String mensagem = ('''
    ----------Gestor de Salário----------
    [1] - Verificar o salário líquido;
    [2] - Verificar salário bruto;
    [3] - Verificar os descontos;
    [4] - Salário com FGTS;
    [5] - Salário com INSS;
    [6] - Salário com valor do Sindicato;
    [7] - Verificar se há desconto negativo;
    [8] - Verificar se há parte do salário negativo;
    [9] - Calcular FGTS mensal;
    [10] - Calcular Vale Alimentação mensal;
    -------------------------------------
    ''');
    print(mensagem.toUpperCase());
    int opcao = int.parse(stdin.readLineSync()!);
    String resultado = '';
    try {
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

          return 'O valor total de descontos é ${(descontos)}%';
        });
      } else if (opcao == 4) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          print('Informe o FGTS:');
          double fgts = double.parse(stdin.readLineSync()!);
          fgts = fgts / 100;
          double salarioBruto = (quantidadeHora * valorHora);
          double desconto = salarioBruto * fgts;
          double salariototalFgts = salarioBruto - desconto;
          return 'O salário é R\$ ${(salariototalFgts)}';
        });
      } else if (opcao == 5) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          print('Informe o INSS:');
          double inss = double.parse(stdin.readLineSync()!);
          inss = inss / 100;
          double salarioBruto = (quantidadeHora * valorHora);
          double desconto = salarioBruto * inss;
          double salariototalInss = salarioBruto - desconto;
          return 'O salário é R\$ ${(salariototalInss)}';
        });
      } else if (opcao == 6) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor do Sindicato:');
          double valorSindicato = double.parse(stdin.readLineSync()!);
          valorSindicato = valorSindicato / 100;
          double salarioBruto = (quantidadeHora * valorHora);
          double desconto = salarioBruto * valorSindicato;
          double salariototalSindicato = salarioBruto - desconto;
          return 'O salário é R\$ ${(salariototalSindicato)}';
        });
      } else if (opcao == 7) {
        resultado = interface(() {
          print('Informe o valor do sindicato:');
          double valorSindicato = double.parse(stdin.readLineSync()!);
          print('Informe o INSS:');
          double inss = double.parse(stdin.readLineSync()!);
          print('Informe o FGTS:');
          double fgts = double.parse(stdin.readLineSync()!);
          return (valorSindicato < 0 || inss < 0 || fgts < 0)
              ? 'Desconto não pode ser negativo'
              : 'Descontos corretos';
        });
      } else if (opcao == 8) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          double salarioTotal = quantidadeHora * valorHora;
          return (salarioTotal < 0 || quantidadeHora < 0 || valorHora < 0)
              ? 'Salário não pode ser negativo'
              : 'Salário corretos';
        });
      } else if (opcao == 9) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          double salarioTotal = quantidadeHora * valorHora;
          double fgts = salarioTotal * 0.08;
          return 'Valor do FGTS mensal: ${fgts}';
        });
      } else if (opcao == 10) {
        resultado = interface(() {
          print('Informe a quantidade de horas trabalhadas:');
          double quantidadeHora = double.parse(stdin.readLineSync()!);
          print('Informe o valor das horas trabalhadas:');
          double valorHora = double.parse(stdin.readLineSync()!);
          double salarioTotal = quantidadeHora * valorHora;
          double valeAlimentacao = salarioTotal * 0.2;
          return 'Valor do Vale alimentação mensal: ${valeAlimentacao}';
        });
      } else {
        print("Opção inválida!");
      }
    } on FormatException catch (e) {
      print("Erro ao informar os valores!");
      print(e);
    } catch (e) {
      print("Valor incorreto!");
      print(e);
    }
    print(resultado.toUpperCase());
  } catch (f) {
    print("Ocorreu algum erro!");
    print(f);
  }
}

//Função que retorna o salário líquido
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

//Função que retorna o salário bruto
double salarioBruto([double quantidadeHora = 300, double valorHora = 8.5]) {
  double salarioTotal = quantidadeHora * valorHora;
  return salarioTotal;
}

double totalDescontos(double inss, double fgts, {double valorSindicato = 3}) {
  double descontos = fgts + inss + valorSindicato;
  return descontos;
}

String verificarDescontos(double inss, double fgts, double valorSindicato) {
  return (valorSindicato < 0 || inss < 0 || fgts < 0)
      ? 'Desconto não pode ser negativo'
      : 'Descontos corretos';
}

String salariobrutoNegativo(double quantidadeHora, double valorHora) {
  double salarioTotal = quantidadeHora * valorHora;
  return (salarioTotal < 0 || quantidadeHora < 0 || valorHora < 0)
      ? 'Salário não pode ser negativo'
      : 'Salário corretos';
}

double salariocomFgts(double quantidadeHora, double valorHora, double fgts) {
  fgts = fgts / 100;
  double salarioBruto = quantidadeHora * valorHora;
  double desconto = salarioBruto * fgts;
  double salariototalcomFgts = salarioBruto - desconto;
  return salariototalcomFgts;
}

double salariocomInss(double quantidadeHora, double valorHora, double inss) {
  inss = inss / 100;
  double salarioBruto = quantidadeHora * valorHora;
  double desconto = salarioBruto * inss;
  double salariototalcomInss = salarioBruto - desconto;
  return salariototalcomInss;
}

double salariocomSindicato(
    double quantidadeHora, double valorHora, double valorSindicato) {
  valorSindicato = valorSindicato / 100;
  double salarioBruto = quantidadeHora * valorHora;
  double desconto = salarioBruto * valorSindicato;
  double salariototalcomSindicato = salarioBruto - desconto;
  return salariototalcomSindicato;
}

dynamic calcularFgts(double valorHora, double quantidadeHora,
    double quantidadeSalarios, double fgts) {
  double salarioTotal = quantidadeHora * valorHora;
  fgts = salarioTotal * 0.08;
  return fgts;
}

dynamic calcularValeAlimentacao(
    double valorHora, double quantidadeHora, double valeAlimentacao) {
  double salarioTotal = quantidadeHora * valorHora;
  valeAlimentacao = salarioTotal * 0.2;
  return valeAlimentacao;
}

String interface(Function minhaFuncao) {
  return minhaFuncao();
}
