import "dart:convert";

class RetornoAutenticacao {
  String senha;
  String email;
 

  RetornoAutenticacao({this.senha, this.email,});

  factory RetornoAutenticacao.fromMap(Map<String, dynamic> json) =>  RetornoAutenticacao(
      senha: json['senha'],
      email: json['email']
     );

  Map<String, dynamic> toMap() => {
    'senha': senha,
    'email': email,
    
  };
  RetornoAutenticacao clientFromJson(String value) {
    final jsonData = json.decode(value);
    return RetornoAutenticacao.fromMap(jsonData);
  }

  String clientToJson(RetornoAutenticacao retornoAutenticacao) {
    final data = retornoAutenticacao.toMap();
    return json.encode(data);
  }
}