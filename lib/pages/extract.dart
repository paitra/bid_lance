import 'package:flutter/material.dart';

class Extract extends StatefulWidget {
  @override
  _ExtractState createState() => _ExtractState();
}

class _ExtractState extends State<Extract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            Text('teste')
          
          ],
        ),
      ),
    );
  }
}