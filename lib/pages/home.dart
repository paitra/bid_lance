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
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Image.asset('assets/teste.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
