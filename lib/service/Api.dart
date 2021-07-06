import 'dart:convert';

import 'package:bid_leilao/models/Autenticacao.dart';
import 'package:bid_leilao/models/Produto.dart';
import 'package:bid_leilao/models/RetornoAutenticacao.dart';
import 'package:http/http.dart' as http;

class Api {
  static final Api api = Api();
  static final String cabecalho = 'https://imcelltec.com/wsbid/rest/';

  Future<RetornoAutenticacao> validarLogin(Autenticacao autenticacao) async {
    //ok
    Uri url = Uri.parse(cabecalho + 'usuario/login/');

    final response = await http.post(url,
        headers: getHeaders(), body: json.encode(autenticacao.toMap()));

    print(response.body);
    if (response.statusCode == 200) {
      
      return RetornoAutenticacao.fromMap(json.decode(response.body));
    } else {
      return null;
    }
  }
  Future<List<Produto>> getProduto() async {
    final cabecalho =
        Uri.parse('https://imcelltec.com/wsbid/rest/produto');

    http.Response response = await http
        .get(cabecalho, headers:  getHeaders())
        .timeout(Duration(seconds: 25));
    print(response.body);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => new Produto.fromJson(data)).toList();
    } else {
      throw Exception('Ocorreu um erro inesperado');
    }
  }

  

  Map<String, String> getHeaders() {
    Map<String, String> map = Map();
    map.addAll({'token': '8529267bd09088e4166ab6e4e6894c7e1a85928f'});
    map.addAll({'content-type': 'application/json'});
    //token
    return map;
  }
}
