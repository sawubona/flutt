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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text('Hi'),
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Child'),
              )
            ],
          ),
        ),
      ),
      body: new Container(
        padding: new EdgeInsets.all(18.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              /* new Text(_value), */
            ],
          ),
        ),
      ),
    );
  }
}
