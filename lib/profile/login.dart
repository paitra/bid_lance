import 'package:bid_leilao/models/Autenticacao.dart';
import 'package:bid_leilao/models/RetornoAutenticacao.dart';
import 'package:bid_leilao/pages/navigation.dart';
import 'package:bid_leilao/profile/cadastro.dart';
import 'package:bid_leilao/service/Api.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
   Login({key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();

  final api = Api();

  login({BuildContext context}) async {
    RetornoAutenticacao retorno = await api.validarLogin(
        Autenticacao(senha: senhaController.text, login: loginController.text));

    if (retorno != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Navegation(retornoAtenticacao: retorno)));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 120, left: 40, right: 40),
        color: Colors.red[700],
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              controller: loginController,
              onChanged: (value) {},
                  validator: (String value) {
                    return value.length > 3 ? null : "Informe um login valido";
                  },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              controller: senhaController,
              validator: (String value) {
                    return value.length > 3 ? null : "Informe uma senha valida";
                  },              
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            // Container(
            //   height: 40,
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     child: Text(
            //       "Recuperar Senha",
            //       textAlign: TextAlign.right,
            //       style: TextStyle(
            //         fontWeight: FontWeight.normal,
            //         color: Colors.white,
            //         fontSize: 20,
            //       ),
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => RecuperarSenha(),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [1, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () async {
                    await login(context: context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: TextButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cadastro(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
