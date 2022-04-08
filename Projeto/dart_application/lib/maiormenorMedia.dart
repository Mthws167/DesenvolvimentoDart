import 'dart:io';

void decisaoTres() {
  print("Informe 3 notas:");
  var nota1 = stdin.readLineSync()!;
  var nota2 = stdin.readLineSync()!;
  var nota3 = stdin.readLineSync()!;

  double nota01 = double.parse(nota1);
  double nota02 = double.parse(nota2);
  double nota03 = double.parse(nota3);
  String maior = '';
  String menor = '';
  if (nota01 > nota02 && nota01 > nota03) {
    maior = "Maior nota ${nota01}";
  } else {
    menor = "Menor nota ${nota01}";
  }
  if (nota02 > nota01 && nota02 > nota03) {
    maior = "Maior nota ${nota02}";
  } else {
    menor = "Menor nota ${nota02}";
  }
  if (nota03 > nota01 && nota03 > nota02) {
    maior = "Maior nota ${nota03}";
  } else {
    menor = "Menor nota ${nota03}";
  }

  double media = (nota01 + nota02 + nota03) / 3;
  print('''
      ${maior} ;
      Média: ${media.toStringAsFixed(2)}
      ${menor} ;''');
}
