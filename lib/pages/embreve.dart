
import 'package:bid_leilao/service/Api.dart';
import 'package:flutter/material.dart';


class Embreve extends StatefulWidget {
  @override
  _Embreve createState() => _Embreve();
}

class _Embreve extends State<Embreve> {
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

                                   Text('Iniciara dia 26/07/2021')
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
