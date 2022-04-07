import 'dart:io';

void conceitoRepeticao() {
  dynamic disciplina;
  dynamic aluno;
  dynamic nome;
  List<String> nomes = [];
  dynamic ra;
  List<String> ras = [];
  dynamic nomeDisciplina;
  List<String> disciplinas = [];
  dynamic ch;
  List<String> chs = [];
  dynamic media;
  List<String> medias = [];
  dynamic presencaQuant;
  List<String> presencas = [];
  String aprovado = '';
  String reprovado = '';

  for (int i = 0; i < 3; i++) {
    print("Informe o nome do ${i + 1}º aluno ");
    nome = stdin.readLineSync();
    nomes.add(nome[i]);
    print("Informe o RA do ${i + 1}º aluno:");
    ra = stdin.readLineSync()!;
    ras.add(ra[i]);
    print("Informe a média e quantidade de presença do aluno:");
    media = stdin.readLineSync()!;
    presencaQuant = stdin.readLineSync()!;
    medias.add(media[i]);
    presencas.add(presencaQuant[i]);
  }

  for (int i = 0; i < 2; i++) {
    print("Informe o nome da ${i + 1}º Disciplina");
    nomeDisciplina = stdin.readLineSync();
    disciplinas.add(nomeDisciplina[i]);
    print("Informe a CH da ${i + 1}º disciplina:");
    ch = stdin.readLineSync()!;
    chs.add(ch[i]);
  }

  double presenca0 = double.parse(presencaQuant);
  double media0 = double.parse(media);
  double ch0 = double.parse(ch);

  if (presenca0 <= ch0 && media0 <= 10 * 0.6) {
    reprovado = "Reprovado(a) por falta e conceito";
  } else if (presenca0 <= ch0 && media0 >= 10 * 0.6) {
    reprovado = "Reprovado(a) por falta";
  } else if (presenca0 >= ch0 && media0 <= 10 * 0.6) {
    reprovado = "Reprovado(a) por conceito";
  } else {
    aprovado = "Aproado(a)!!!";
  }

  print("Informe o aluno que deseja ver o conceito:");
  aluno = stdin.readLineSync();
  disciplina = stdin.readLineSync();
  if (aluno == "${nome}" && disciplina == "${nomeDisciplina}") {
    print('''
            ${nome} :
            - RA: ${ra}.
            - Média: ${media0}
            - Matérias: ${nomeDisciplina}
            -------------------------
            ${nome} está ${aprovado}${reprovado} em ${nomeDisciplina}
      
    ''');
  }
}
