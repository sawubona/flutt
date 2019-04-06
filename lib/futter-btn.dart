import 'package:flutter/material.dart';
/* import 'dart:async'; */

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = '';

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          onPressed: () => _onClick('Button 1'),
          icon: Icon(Icons.timer),
        ),
        IconButton(
          onPressed: () => _onClick('Button 2'),
          icon: Icon(Icons.toys),
        ),
        IconButton(
          onPressed: () => _onClick('Button 3'),
          icon: Icon(Icons.tune),
        ),
      ],
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}
