main() {
  var aluno = Aluno(
      RA: 20200024725,
      nome: "Matheus",
      sobrenome: "Henrique de Oliveira",
      email: "mthws.henrique@hotmail.com",
      cpf:"***.741.38*-**");
  aluno._anoNascimento = 2001;
  print(aluno._anoNascimento);
  print(aluno.RA);
   if (aluno.getValidateCPF() == true) {
    print(aluno.cpf);
  } else {
    print("Digite um CPF válido");
  }
  if (aluno.getValidateEmail() == true) {
    print(aluno.email);
  } else {
    print("Digite um e-mail válido");
  }
  print(aluno.getNomeCompleto());
  print("${aluno.getIdadeAtual()}");
}

class Aluno {
  int RA;
  String nome;
  String sobrenome;
  String cpf;
  String email;
  late int _anoNascimento;

  int get anoNascimento => _anoNascimento;

  set anoNascimento(int anoNascimento) => this._anoNascimento = anoNascimento;

  bool getValidateCPF() => this.cpf.length>=11 && this.cpf!=null; 

  bool getValidateEmail() => this.email != null && this.email!.contains("@");

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
      required this.email,
      required this.cpf});
}
