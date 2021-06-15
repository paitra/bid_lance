import 'package:flutter/material.dart';

class Lance extends StatefulWidget {
  @override
  _LanceState createState() => _LanceState();
}

class _LanceState extends State<Lance> {
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
        child: Text('lance'),
      ),
          
          ],
        ),
      ),
    );
  }
}