import 'bola.dart';
import 'camiseta.dart';
import 'luva.dart';
import 'camiseta_dois.dart';
import 'verificar_aprovacao.dart';
import 'aluno.dart';

main() {
  var minhaClasse = MinhaClasse('Passando Valor');
  minhaClasse.meuAtributo = 'teste';

  print(minhaClasse.atributoNaoNulo);
  print(minhaClasse.meuAtributo);

  var bola = Bola();
  print(bola.cor);
  print(bola.tamanho);

  var luva = Luva();
  luva.cor = "Branca";
  luva.tecido = "Couro";
  print(luva.cor);
  print(luva.tecido);

  var camiseta = Camiseta("G");
  print(camiseta.cor);
  print(camiseta.tamanho);

  var camisetaDois = CamisetaDois(cor: "Verde", tamanho: "M");
  print(camisetaDois.cor);
  print(camisetaDois.tamanho);

  var verificarAprovacao = VerificarAprovacao(nota1: 7, nota2: 5);
  if ((verificarAprovacao.nota1 + verificarAprovacao.nota2) / 2 < 6) {
    print("Reprovado:/");
  } else {
    print("Aprovado :3");
  }


}

class MinhaClasse {
  String? meuAtributo;

  String atributoNaoNulo;

  MinhaClasse(this.atributoNaoNulo);
}


/*
→ Qual a diferença em fazer a inicialização no atributo e no construtor? 
  Diferença na construção do código e na forma que podemos usar os atributos.

→ O que é e para que serve o construtor? Qual código pode-se definir nele?
  O construtor determina que ações devem ser executadas quando da criação de um objeto.
  class Construtor{
    String construtor;
    Construtor(this.construtor);
  }
*/