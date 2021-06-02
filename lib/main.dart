/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  static const String _title = 'teste';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child: Column(
        children: [
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
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
    Container(
      child: ElevatedButton(
        onPressed: () {},        
       style:
        ElevatedButton.styleFrom(
      primary: Colors.red[700]
        ),
        child: Text('lance'),
      ),
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
