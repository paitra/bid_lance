import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
              ElevatedButton(
        onPressed: () {},        
       style:
        ElevatedButton.styleFrom(
      primary: Colors.red[700]
        ),
        child: Text('Cadastro'),
      ),
          
          ],
        ),
      ),
    );
  }
}