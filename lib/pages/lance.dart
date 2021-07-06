
import 'package:bid_leilao/service/Api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Lance extends StatefulWidget {
  @override
  _Lance createState() => _Lance();
}

class _Lance extends State<Lance> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
          future: Api.api.getProduto(),
          initialData: List(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (x, int position) {
                      final item = snapshot.data[position];
                      return GestureDetector(
                        onDoubleTap: () => print('abc'),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.arrow_drop_down_circle),
                                title: Text('celular ' + item.nome),
                                subtitle: Text(
                                  'Valor R\$ ' + item.preco,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Image.network(item.arquivo),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  IconButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      icon: Icon(
                                        Icons.share_sharp,
                                        color: Colors.grey[400],
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.grey[400],
                                      )),
                                  IconButton(
                                    onPressed: () {
                                      // Perform some action
                                    },
                                    icon: Icon(
                                      Icons.gavel_sharp,
                                      color: Colors.red[900],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
