import 'package:bid_leilao/models/RetornoAutenticacao.dart';
import 'package:bid_leilao/pages/navtopo.dart';
import 'package:bid_leilao/profile/perfil.dart';
import 'package:flutter/material.dart';
import 'navtopo.dart';
import 'extract.dart';
import 'lance.dart';

class Navegation extends StatefulWidget {
   Navegation({Key key, RetornoAutenticacao retornoAtenticacao}) : super(key: key);

  @override
  State<Navegation> createState() => _NavegationState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NavegationState extends State<Navegation> {
  int _selectedIndex = 0;
  TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Navtopo(),
    Lance(),
    Extract(),
    Perfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), // here the desired height
          child: Container(
            width: 100,
            child: Image.asset('assets/logo.png'),
            color: Colors.red[700],
          )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel_sharp),
            label: 'Lance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_rounded),
            label: 'extrato',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[350],
        selectedItemColor: Colors.red[900],
        onTap: _onItemTapped,
        iconSize: 35,
      ),
    );
  }
}
