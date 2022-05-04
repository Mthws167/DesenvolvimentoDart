String show() {
  var escolha =2;
  var n1 = 8.0;
  var n2 = 8.0;
  var media = 6.0;
  return interfaceAprovacao(escolha, n1, n2, media) ? 'aprovado' : 'reprovado';
}

bool interfaceAprovacao(int escolha, double nota1, double nota2, double media) {
  double nota;
  if (escolha == 1) {
    nota = calcularMedia(nota1, nota2);
  } else if (escolha == 2) {
    nota = calcularMedia(nota1, nota2);
  } else {
    nota = calcularMenorNota(nota1, nota2);
  }
  return verificarAprovacao(nota, media);
}

bool verificarAprovacao(double nota, double media) {
  return (nota >= media);
}

double calcularMedia(double nota1, double nota2) {
  return (nota1 + nota2) / 2;
}

double calcularMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) {
    maior = nota2;
  }
  return maior;
}

double calcularMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }
  return menor;
}
