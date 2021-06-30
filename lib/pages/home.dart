import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
           Card(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/teste.png'))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Nouveautés'),
              ),
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            // Perform some action
                          },
                          icon: Icon(
                            Icons.gavel_sharp,
                            color: Colors.red[900],
                          )),
                      TextButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 2'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Card(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                leading: const Icon(Icons.album),
                title: Text('The  is having:'),
              ),
              new ButtonTheme(
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(children: <Widget>[
                new TextButton(
                  child: const Text('Thumb up'),
                  onPressed: () {/* ... */},
                ),
                new TextButton(
                  child: const Text('Thumb down'),
                  onPressed: () {/* ... */},
                )
              ]))
            ])),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
            Card(
              child: InkWell(
                child: SizedBox(
                  width: 380,
                  height: 200,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ),
            ),
           Container(
    width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.pink,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         
          const ListTile(
            
            leading: Icon(Icons.album, size: 70),
            title: Text('Heart Shaker', style: TextStyle(color: Colors.white)),
            subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
          ),
           Padding(padding: EdgeInsets.all(16.0),
          child: Image.asset('assets/teste.png'),
          ),
          ButtonTheme(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Edit', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('Delete', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
            Card(
              child: InkWell(
                child: SizedBox(
                  width: 380,
                  height: 200,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                child: SizedBox(
                  width: 380,
                  height: 200,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
