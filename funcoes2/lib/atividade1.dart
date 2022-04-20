import 'dart:io';

void mostrar() {
  print('''
  Escolha uma opção:
  [1] - Verificar se o salário é maior que o salário mínimo;
  [2] - Verificar se o salário é positivo;
  [3] - Verificar o maior salário.
  ''');
  int opcao = int.parse(stdin.readLineSync()!);
  print('Informe o salário:');
  double salario = double.parse(stdin.readLineSync()!);
  String resultado = '';
  if (opcao == 1) {
    resultado = interface(salario, (salario) {
      print('Informe o bonus:');
      double bonus = double.parse(stdin.readLineSync()!);
      double bonusFinal = bonus / 100;
      double bonificacao = bonusFinal * salario;
      double salarioFinal = bonificacao + salario;
      return (salarioFinal > 1200)
          ? 'maior que Salário mínimo'
          : 'menor que Salário mínimo';
    });
  } else if (opcao == 2) {
    resultado = interface(salario, (salario) {
      print('Informe o desconto:');
      double desconto = double.parse(stdin.readLineSync()!);
      double descontoFinal = desconto / 100;
      double descontos = descontoFinal * salario;
      double salarioFinal = salario - descontos;
      return (salarioFinal > salario) ? 'Positivo' : 'Negativo';
    });
  } else if (opcao == 3) {
    resultado = interface(salario, (salario) {
      print('Informe o segundo salario:');
      double salario2 = double.parse(stdin.readLineSync()!);
      return (salario > salario2) ? salario : salario2;
    });
  }
  print("$resultado");
}

String bonificar(double salario, double bonus) {
  double bonusFinal = bonus / 100;
  double bonificacao = bonusFinal * salario;
  double salarioFinal = bonificacao + salario;
  return (salarioFinal > 1200)
      ? 'maior que Salário mínimo'
      : 'menor que Salário mínimo';
}

String descontar(double salario, double desconto) {
  double descontoFinal = desconto / 100;
  double descontos = descontoFinal * salario;
  double salarioFinal = salario - descontos;
  return (salarioFinal > salario) ? 'Positivo' : 'Negativo';
}

double comparar(double salario, double salario2) {
  return (salario > salario2) ? salario : salario2;
}

String interface(double salario, Function minhaFuncao) {
  return minhaFuncao(salario);
}
