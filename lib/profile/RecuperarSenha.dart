import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  @override
  _RecuperarSenhaState createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
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
        child: Text('RecuperarSenha'),
      ),
          
          ],
        ),
      ),
    );
  }
}