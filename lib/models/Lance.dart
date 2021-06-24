class Lance {
  String id;
  String codUsuario;
  String codLeilao;
  String time;
  String ganhador;

  Lance({this.id, this.codUsuario, this.codLeilao, this.time, this.ganhador});

  Lance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codUsuario = json['cod_usuario'];
    codLeilao = json['cod_leilao'];
    time = json['time'];
    ganhador = json['ganhador'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cod_usuario'] = this.codUsuario;
    data['cod_leilao'] = this.codLeilao;
    data['time'] = this.time;
    data['ganhador'] = this.ganhador;
    return data;
  }
}