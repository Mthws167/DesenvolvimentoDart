main() {
  var aluno = Aluno(
      CPF: "108.741.389-30",
      nome: "Matheus Henrique de Oliveira",
      RA: 20200024725);
  aluno.anoNascimento = 2000;
  aluno._anoNascimento = 2000;
  int calcularIdade;
  print(aluno._anoNascimento);
  print(aluno.CPF);
  print(aluno.RA);
  print(aluno.nome);
}

class Aluno {
  int RA;
  String nome;
  String CPF;
  String? email;
  late int _anoNascimento;
  String? telefone;

  //get
  int get anoNascimento => _anoNascimento;

  //set
  set anoNascimento(int anoNascimento) => this._anoNascimento = anoNascimento;

  Aluno({
    required this.RA,
    required this.nome,
    required this.CPF,
  });

  int calcularIdade() {
    var anoAtual = DateTime.now().year;
    var idade = anoAtual - anoNascimento;
    return idade;
  }
}
