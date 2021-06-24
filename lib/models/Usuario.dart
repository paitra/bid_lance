import 'dart:convert';

class Usuario {
  String id;
  String nome;
  String login;
  String senha;
  String saldo;

  Usuario({this.id, this.nome, this.login, this.senha, this.saldo});

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    login = json['login'];
    senha = json['senha'];
    saldo = json['saldo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['login'] = this.login;
    data['senha'] = this.senha;
    data['saldo'] = this.saldo;
    return data;
  }
}