class Produto {
  String id;
  String codCategoria;
  String codMarca;
  String nome;
  String preco;
  String quantidade;
  String descricao;
  String arquivo;

  Produto(
      {this.id,
      this.codCategoria,
      this.codMarca,
      this.nome,
      this.preco,
      this.quantidade,
      this.descricao,
      this.arquivo,
      });

  Produto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codCategoria = json['cod_categoria'];
    codMarca = json['cod_marca'];
    nome = json['nome'];
    preco = json['preco'];
    quantidade = json['quantidade'];
    descricao = json['descricao'];
    arquivo = json['arquivo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cod_categoria'] = this.codCategoria;
    data['cod_marca'] = this.codMarca;
    data['nome'] = this.nome;
    data['preco'] = this.preco;
    data['quantidade'] = this.quantidade;
    data['descricao'] = this.descricao;
    data['arquivo'] = this.arquivo;
    return data;
  }
}