import 'package:flutter/material.dart';

class Lance extends StatefulWidget {
  @override
  _Lance createState() => _Lance();
}

class _Lance extends State<Lance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 140.0,
                        width: 410.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/celular.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Container(
                        height: 140.0,
                        width: 410.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/celular.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Container(
                        height: 140.0,
                        width: 410.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/celular.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                     
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 60,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text("Ultimos lances",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[50],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[200],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[50],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[200],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[50],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[200],
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.grey[50],
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
    );
  }
}
