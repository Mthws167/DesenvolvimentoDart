import 'package:email_validator/email_validator.dart';

main() {
  var aluno = Aluno(
      RA: 20200024725, nome: "Matheus", sobrenome: "Henrique de Oliveira");
  aluno._CPF = "***.741.38*-**";
  aluno._anoNascimento = 2001;
  aluno._email = "mthws.henrique@hotmail.com";
  print(aluno._anoNascimento);
  print(aluno.RA);
  print(aluno._CPF);
  print(aluno._email);
  print(aluno.getNomeCompleto());
  print("${aluno.getIdadeAtual()}");
}

class Aluno {
  int RA;
  String nome;
  String sobrenome;
  late String _CPF;
  late String _email;
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

  String get email {
    return this._email;
  }

  set email(String email) {
    if ( email != null && !EmailValidator.validate(email)) {
      this._email = email;
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

  Aluno({required this.RA, required this.nome, required this.sobrenome});
}
