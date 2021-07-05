
import 'dart:convert';

import 'package:bid_leilao/models/Autenticacao.dart';
import 'package:bid_leilao/models/RetornoAutenticacao.dart';
import 'package:http/http.dart' as http;


class Api {
  static final Api api = Api();
  static final String cabecalho = 'https://imcelltec.com/wsbid/rest/';

  Future<RetornoAutenticacao> validarLogin(Autenticacao autenticacao) async {
    //ok
    Uri url = Uri.parse(cabecalho + '/usuario/login');

    final response = await http.post(url,
        headers: getHeadres(), body: json.encode(autenticacao.toMap()));

    if (response.statusCode == 200) {
      return RetornoAutenticacao.fromMap(jsonDecode(response.body));
    } else {
      return null;
    }
  }


  Map<String, String> getHeadres() {
    Map<String, String> map = Map();
    map.addAll({'accept': 'application/json'});
    map.addAll({'content-type': 'application/json'});
    //token
    return map;
  }
}