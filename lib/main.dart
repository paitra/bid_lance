import 'package:bid_leilao/profile/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  static const String _title = 'teste';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Login(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
