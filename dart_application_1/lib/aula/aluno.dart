main() {
  var aluno = Aluno(
  RA: 20200024725, nome: "Matheus  ", sobrenome: "Henrique de Oliveira");
  aluno._CPF = "108.741.389-30";
  aluno._anoNascimento = 2001;
  print(aluno._anoNascimento);
  print(aluno.RA);
  print(aluno._CPF);
  print(aluno.email);
  print("${aluno.nome}${aluno.sobrenome}");
  print("${aluno.getIdadeAtual()}");
}
class Aluno {
  int RA;
  String nome;
  String sobrenome;
  late String _CPF;
  String? email;
  late int _anoNascimento;

  int get anoNascimento => _anoNascimento;

  set anoNascimento(int anoNascimento) => this._anoNascimento = anoNascimento;

  String get CPF {
    return this._CPF;
  }

  set CPF(String CPF) {
    if (CPF.length == 11 && int.parse(CPF) != null) {
      this._CPF = CPF;
    }
  }

  int getIdadeAtual() {
    var anoAtual = DateTime.now().year;
    return anoAtual - anoNascimento;
  }

  String getNomeCompleto() {
    return nome + ' ' + sobrenome;
  }

  String? telefone;

  Aluno(
      {required this.RA,
      required this.nome,
      required this.sobrenome,
      this.email});
}