import 'dart:io';

void main() {
  //Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  adicionarSalario(1300.0, 2.0, ePositivo);

  //Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  adicionarSalario(1300.0, 2.0, (double numero) {
    if (numero > 0) {
      return true;
    } else {
      return false;
    }
  });
  //Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  adicionarSalario(1300.0, 2.0, (double numero) => (numero > 0) ? true : false);
  //Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.
  adicionarSalario2(1300.0, -2000.0, eValores);
  adicionarSalario(1300.0, -2000.0, (double numero) {
    if (1300.0 < numero && numero > 0) {
      return true;
    } else {
      return false;
    }
  });
  adicionarSalario(1300.0, -2000.0,
      (double numero) => (1300.0 < numero && numero > 0) ? true : false);
  //Exercício 5  - refaça o exe c porém fazendo uma validação sua.
  adicionarSalario(
      1300.0, 20.0, (double numero) => (numero > 0) ? true : false);
  //Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.
  final controleVelocidade = <int>[30, 50, 70];
  controleVelocidade.forEach((int valor) {
    if (valor > 60) {
      print('Maior que a velocidade permitida');
    } else if (valor >= 30) {
      print('Na velocidade correta');
    } else {
      print('Menor que a velocidade permitida');
    }
  });

  final controleMedias = <double>[3, 6, 7];
  controleMedias.forEach((double valor) {
    if (valor >= 6) {
      print('Passou de ano');
    } else {
      print('Reprovou');
    }
  });

  /*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
      Quando são funções que não dependem de nomes, somente são declaradas e armazenadas em uma variável.

    - Os requisitos necessários para usar funções anônimas? 
      Necessitam de variaveis para armazenar valor 

    - diferença entre função nomeada e anônimas?
      função é nomeada porque nós demos a ela um nome e você pode acessar essa função novamente usando esse nome
       A função acima é uma função anônima pelo simples motivo de você não ter dado um nome para ela

  
    - diferença entre anonymous function e arrow function?
      Arrow Functions permitem escrever em um modelo encurtado onde a última expressão analisada será o retorno da função quando é omitido as chaves {} .
      A função anônima pode ter zero ou mais parâmetros com anotações de tipo opcionais.

    Em que caso devemos utilizar Arrow Function? O que devemos considerar?

  */
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}

void adicionarSalario2(double salario, double valor,
    Function(double salario, double valor) validacao) {
  final eValido = validacao(salario, valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool eValores(double salario, double numero) {
  if (salario < numero && numero > 0) {
    return true;
  } else {
    return false;
  }
}
