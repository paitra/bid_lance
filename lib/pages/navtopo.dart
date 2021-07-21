import 'package:bid_leilao/pages/embreve.dart';
import 'package:bid_leilao/pages/fechados.dart';
import 'package:bid_leilao/pages/iniciados.dart';
import 'package:flutter/material.dart';

class Navtopo extends StatefulWidget {
  @override
  _NavtopoState createState() => _NavtopoState();
}

class _NavtopoState extends State<Navtopo> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Center(
              child: new TabBar(
                isScrollable: true,
                labelColor: Colors.grey[700],
                indicatorColor: Colors.red,
                tabs: [Text("     Fechados     "), Text("    iniciados    "), Text("      Em breve     ")],
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              Fechados(),
              Iniciados(),
              Embreve()
            ],
          ),
        ),
      ),
    );
  }
}
