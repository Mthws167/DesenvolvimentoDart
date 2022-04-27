import 'dart:io';

// Como definir parametro [coloque colchetes e defina valor]
// Parametro nomeavel {colocar os valores} use required se for valor obrigaorio
/*
1) Em que caso os parâmetros nomeados são úteis? 
2) Por padrão os parâmetros nomeados são opcionais ou obrigatórios? Caso sejam opcionais, como torná-los obrigatórios?
3) Qual a sintaxe para fazer a chamada de uma função com os parâmetros nomeados? 
4) É possível definir uma única função com parâmetros nomeados e anônimos?
5) Quais são as vantagens em utilizar parâmetros nomeados? 
6) Quais são as diferenças entre parâmetros nomeados e anônimos?

Em relação ao seu projeto
Duas funções com parâmetros opcionais/valor padrão;
Uma função com parâmetros nomeados obrigatórios;
Uma função com parâmetros nomeados opcionais;
Uma função com parâmetros nomeados obrigatórios e opcionais;
Uma única função com parâmetros nomeados e anônimos;
*/
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

double salarioBruto([double quantidadeHora = 300, double valorHora = 8.5]) {
  double salarioTotal = quantidadeHora * valorHora;
  return salarioTotal;
}

double totalDescontos(double inss, double fgts, {double valorSindicato = 3}) {
  double descontos = fgts + inss + valorSindicato;
  return descontos;
}

String interface(Function minhaFuncao) {
  return minhaFuncao();
}

void main() {
  verificarAprovacao(5, 7, 7);
  verificarAprovacao(6, 8);
  verificarAprovacaoComNome(nota1: 6, nota2: 4);
}

String verificarAprovacao(double nota1, double nota2,
    [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'aprovado';
  }
}

String verificarAprovacaoComNome(
    {required double nota1, required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarAprovacaoParamMisturado(double nota1,
    {required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
