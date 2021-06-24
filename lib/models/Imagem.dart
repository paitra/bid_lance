class Imagem {
  String id;
  String produtoId;
  String capa;
  String arquivo;

  Imagem({this.id, this.produtoId, this.capa, this.arquivo});

  Imagem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    produtoId = json['produto_id'];
    capa = json['capa'];
    arquivo = json['arquivo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['produto_id'] = this.produtoId;
    data['capa'] = this.capa;
    data['arquivo'] = this.arquivo;
    return data;
  }
}