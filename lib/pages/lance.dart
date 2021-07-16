import 'package:bid_leilao/service/Api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Lance extends StatefulWidget {
  @override
  _Lance createState() => _Lance();
}

class _Lance extends State<Lance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 120.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/teste.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Container(
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                     
                      scrollDirection: Axis.vertical,
                      children: <Widget>[

                        Container(
                          width: 50,
                          height: 40,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 2,
                      children: List.generate(50, (index) {
                        return Container(
                          child: Card(
                            color: Colors.amber,
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
