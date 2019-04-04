import 'package:flutter/material.dart';
import 'dart:async';

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
  void _onClick() => setState(() => _value = new DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onClick,
        backgroundColor: Colors.red,
        mini: false,
        child: new Icon(Icons.timer),
      ),
      body: new Container(
        padding: new EdgeInsets.all(18.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}
