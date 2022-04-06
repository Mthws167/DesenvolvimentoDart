import 'dart:io';

void funcao() {
  //variáveis
  String nomeProduto = "Chocolate";
  double precoProduto = 2.2;
  int quantidadeProduto = 0;

  //variavel nula
  String? descricao;

  //Transformar variavel Steing em duble
  String entradaPreco = "3.5";
  double preco = double.parse(entradaPreco);

  //transformar variavel String em Int
  String codigoEntrada = "01";
  int codigo = int.parse(codigoEntrada);

  //variaveis de inferencia
  var nomeProduto2 = "Chocolate";
  var quantidade2 = 23;
  var preco2 = 34.5;

  //variavel dinamica
  dynamic valor = 3;
  valor = 'Paulo';
  valor = 45.8;

  //inserindo valor
  print("Informe o seu nome:");
  var nome = stdin.readLineSync();
  print("${nome}!");
  print('''O nome do produto é ${nomeProduto}, o seu preço é de RS ${precoProduto} e tenho ${quantidadeProduto}.''');
}
