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
  int _value = 0;

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: _add,
          ),
          new IconButton(
            icon: new Icon(Icons.remove),
            onPressed: _remove,
          ),
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(18.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(
                _value.toString(),
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
